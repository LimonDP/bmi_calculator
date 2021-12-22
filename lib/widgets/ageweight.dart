import 'package:flutter/material.dart';

class AgeWeight extends StatefulWidget {
  final String textValue;
  int integerValue;
  AgeWeight({Key? key, required this.textValue, required this.integerValue})
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
              onPressed: () {
                setState(() {
                  widget.integerValue--;
                });
              },
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
              onPressed: () {
                setState(() {
                  widget.integerValue++;
                });
              },
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
