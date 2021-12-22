import 'package:flutter/material.dart';

class HeightExpanded extends StatefulWidget {
  const HeightExpanded({Key? key}) : super(key: key);

  @override
  _HeightExpandedState createState() => _HeightExpandedState();
}

class _HeightExpandedState extends State<HeightExpanded> {
  double _currentSliderValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('HEIGHT', style: TextStyle(fontSize: 27)),
        RichText(
          text: TextSpan(
              text: _currentSliderValue.round().toString(),
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(text: 'cm', style: TextStyle(fontSize: 22))
              ]),
        ),
        SliderTheme(
            data: SliderThemeData(
                activeTrackColor: Color(0xFFF9116E),
                inactiveTrackColor: Colors.grey,
                overlayColor: Colors.white12,
                trackHeight: 4,
                thumbColor: Color(0xFFF4668E)),
            child: Slider(
              value: _currentSliderValue,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
              max: 400,
              min: 0,
              label: _currentSliderValue.round().toString(),
            ))
      ],
    );
  }
}
