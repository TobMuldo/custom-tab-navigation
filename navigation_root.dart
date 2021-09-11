import 'package:flutter/material.dart';
import '../widgets/custom_navigation_bar.dart';

class NavigationRoot extends StatefulWidget {
  //screens to be passed
  @override
  _NavigationRootState createState() => _NavigationRootState();
}

class _NavigationRootState extends State<NavigationRoot> {
  //screens to be displayed
  List<Widget> screens = [
    //these where the 3 main tabs are going to be placed
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.green,
    )
  ];

  //the currentScreensIndex screens index
  int currentScreensIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: screens[currentScreensIndex],
          //have the list stored in its own, display currentScreensIndex index
          bottomNavigationBar: CustomNav(
            screens: screens,
            currentScreensIndex: currentScreensIndex,
            onScreenChange: (int val) => {
              //update the screen with the index of the screen that
              //the user wants to view (val)
              setState(() {
                currentScreensIndex = val;
              })
            },
          ),
        ),
      ),
    );
  }
}
