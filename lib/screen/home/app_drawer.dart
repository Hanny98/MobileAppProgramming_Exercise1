import 'package:flutter/material.dart';
import 'home.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();

  final bool actionCheck;
  final bool floatingCheck;
  final Function setAppBarAction;
  final Function setFloatingAction;

  AppDrawer(
    this.actionCheck,
    this.floatingCheck,
    this.setAppBarAction,
    this.setFloatingAction,
  );
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: CheckboxListTile(
          title: const Text('Allow resize?'),
          value: Home.appbarAction,
          onChanged: (bool actionCheck) {
            widget.setAppBarAction(actionCheck);
          },
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: CheckboxListTile(
          title: const Text('Allow change primer color?'),
          value: Home.floatingVisible,
          onChanged: (bool floatingCheck) {
            setState(() {
              widget.setFloatingAction(floatingCheck);
            });
          },
        ),
      ),
    ]));
  }
}
