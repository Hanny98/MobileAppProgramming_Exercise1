import 'package:flutter/material.dart';

class SliderFloating extends StatefulWidget {
  @override
  _SliderFloatingState createState() => _SliderFloatingState();

  final Color color;
  final double valueRed;
  final double valueGreen;
  final double valueBlue;
  final Function setSlider;
  final Function setFloatingColorMax;

  SliderFloating(
    this.color,
    this.valueRed,
    this.valueGreen,
    this.valueBlue,
    this.setSlider,
    this.setFloatingColorMax,
  );

  double getSliderValue() {
    if (color == Colors.red) {
      return valueRed;
    }
    if (color == Colors.green) {
      return valueGreen;
    }
    if (color == Colors.blue) {
      return valueBlue;
    }
    return 0;
  }
}

class _SliderFloatingState extends State<SliderFloating> {
  @override
  Widget build(BuildContext context) {
    final double currentSliderValue = widget.getSliderValue();
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Slider(
              min: 0,
              max: 255,
              value: currentSliderValue,
              onChanged: (value) {
                widget.setSlider(value);
              },
            ),
            //width: 350,
          ),
          FloatingActionButton(
            onPressed: () {
              widget.setFloatingColorMax();
            },
            backgroundColor: widget.color,
            child: Text(currentSliderValue.toStringAsFixed(0)),
          ),
        ],
      ),
    );
  }
}
