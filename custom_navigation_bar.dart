import 'package:flutter/material.dart';
import '../presentation/app_icons.dart';

class CustomNav extends StatefulWidget {
  List<Widget> screens;
  int currentScreensIndex;
  Function(int) onScreenChange;
  //list of screens and the starting index (initial _currentScreensIndex)
  CustomNav(
      {required this.screens,
      required this.currentScreensIndex,
      required this.onScreenChange});

  @override
  _CustomNavState createState() => _CustomNavState();
}

class _CustomNavState extends State<CustomNav> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: width,
      height: 100,
      //row of buttons
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //onScreenChange method calls is where the logic takes place
          IconButton(
              onPressed: () {
                widget.onScreenChange(0);
              },
              icon: Icon(Icons.ac_unit)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).accentColor,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  elevation: 4,
                  shadowColor: Theme.of(context).accentColor),
              onPressed: () {
                //activate a method that record audio then converts it to text.
              },
              child: Icon(Icons.mic, color: Colors.white)),
          IconButton(
              onPressed: () {
                widget.onScreenChange(2);
              },
              icon: Icon(Icons.ac_unit))
        ],
      ),
      //could add spacing here
    );
  }
}
