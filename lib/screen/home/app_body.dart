import 'package:flutter/material.dart';
import 'home.dart';
import 'package:exercise1/widget/slider_floating.dart';

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //for icon
        Center(
            child: Container(
          child: Icon(
            Icons.alarm,
            size: Home.iconsize.toDouble(),
            color: Color.fromRGBO(Home.valueRed.toInt(),
                Home.valueGreen.toInt(), Home.valueBlue.toInt(), 1.0),
          ),
          height: 450,
          width: MediaQuery.of(context).size.width,
        )),

        //for red
        Container(
          child: Home.floatingVisible
              ? SliderFloating(
                  Colors.red,
                  Home.valueRed.toDouble(),
                  Home.valueGreen.toDouble(),
                  Home.valueBlue.toDouble(), (value) {
                  setState(() {
                    Home.valueRed = value;
                  });
                }, () {
                  setState(() {
                    Home.valueRed = 255;
                    Home.valueGreen = 0;
                    Home.valueBlue = 0;
                  });
                })
              : Row(
                  children: [
                    Container(
                      child: Slider(
                        min: 0,
                        max: 255,
                        value: Home.valueRed.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            Home.valueRed = value;
                          });
                        },
                      ),
                      width: 450,
                    ),
                    Text(Home.valueRed.toStringAsFixed(0)),
                  ],
                ),
        ),

        //for green
        Container(
          child: Home.floatingVisible
              ? SliderFloating(
                  Colors.green,
                  Home.valueRed.toDouble(),
                  Home.valueGreen.toDouble(),
                  Home.valueBlue.toDouble(), (value) {
                  setState(() {
                    Home.valueGreen = value;
                  });
                }, () {
                  setState(() {
                    Home.valueRed = 0;
                    Home.valueGreen = 255;
                    Home.valueBlue = 0;
                  });
                })
              : Row(
                  children: [
                    Container(
                      child: Slider(
                        min: 0,
                        max: 255,
                        value: Home.valueGreen.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            Home.valueGreen = value;
                          });
                        },
                      ),
                      width: 450,
                    ),
                    Text(Home.valueGreen.toStringAsFixed(0)),
                  ],
                ),
        ),

        //for blue
        Container(
          child: Home.floatingVisible
              ? SliderFloating(
                  Colors.blue,
                  Home.valueRed.toDouble(),
                  Home.valueGreen.toDouble(),
                  Home.valueBlue.toDouble(), (value) {
                  setState(() {
                    Home.valueBlue = value;
                  });
                }, () {
                  setState(() {
                    Home.valueRed = 0;
                    Home.valueGreen = 0;
                    Home.valueBlue = 255;
                  });
                })
              : Row(
                  children: [
                    Container(
                      child: Slider(
                        min: 0,
                        max: 255,
                        value: Home.valueBlue.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            Home.valueBlue = value;
                          });
                        },
                      ),
                      width: 450,
                    ),
                    Text(Home.valueBlue.toStringAsFixed(0)),
                  ],
                ),
        ),
      ],
    );
  }
}
