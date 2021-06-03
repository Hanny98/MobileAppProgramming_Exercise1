import 'package:flutter/material.dart';
import 'app_body.dart';
import 'app_drawer.dart';
import 'package:exercise1/widget/action_buttons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  static double valueRed = 0;
  static double valueBlue = 0;
  static double valueGreen = 0;
  static int iconsize = 100;
  static bool appbarAction = true;
  static bool floatingVisible = true;
}

void iconSize(double value) {}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        Home.appbarAction,
        Home.floatingVisible,
        (actionCheck) {
          setState(() {
            Home.appbarAction = actionCheck;
          });
        },
        (floatingCheck) {
          setState(() {
            Home.floatingVisible = floatingCheck;
          });
        },
      ),
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('My Icon'),
          actions: Home.appbarAction
              ? <Widget>[
                  ActionButton("-", Home.iconsize, (computedSize) {
                    setState(() {
                      Home.iconsize = computedSize;
                    });
                  }),
                  ActionButton("S", Home.iconsize, (computedSize) {
                    setState(() {
                      Home.iconsize = computedSize;
                    });
                  }),
                  ActionButton("M", Home.iconsize, (computedSize) {
                    setState(() {
                      Home.iconsize = computedSize;
                    });
                  }),
                  ActionButton("L", Home.iconsize, (computedSize) {
                    setState(() {
                      Home.iconsize = computedSize;
                    });
                  }),
                  ActionButton("+", Home.iconsize, (computedSize) {
                    setState(() {
                      Home.iconsize = computedSize;
                    });
                  }),
                ]
              : []),
      body: AppBody(),
    );
  }
}
