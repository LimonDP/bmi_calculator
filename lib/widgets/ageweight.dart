import 'package:bmi_calculator/widgets/bmi_math.dart';
import 'package:flutter/material.dart';

class AgeWeight extends StatefulWidget {
  final String textValue;
  int integerValue;
  final VoidCallback incrementF;
  final VoidCallback decrement;
  AgeWeight(
      {Key? key,
      required this.textValue,
      required this.integerValue,
      required this.incrementF,
      required this.decrement})
      : super(key: key);

  @override
  _AgeWeightState createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.textValue,
          style: TextStyle(fontSize: 23),
        ),
        Text(
          widget.integerValue.toString(),
          style: TextStyle(fontSize: 45),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white12,
              onPressed: widget.decrement,
              child: Icon(
                Icons.remove,
                size: 33,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            FloatingActionButton(
              backgroundColor: Colors.white12,
              onPressed: widget.incrementF,
              child: Icon(
                Icons.add,
                size: 33,
              ),
            )
          ],
        )
      ],
    );
  }
}
