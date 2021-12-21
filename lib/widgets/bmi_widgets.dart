import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double _currentSliderValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 140,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_outlined,
                              size: 66.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 66.0,
                            ),
                            Text('Female',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 165,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Theme.of(context).backgroundColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 22),
                    ),
                    RichText(
                      text: TextSpan(
                        text: _currentSliderValue.round().toString(),
                        style: TextStyle(fontSize: 37),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'cm',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                      thumbColor: Color(0xFFFF0067),
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      max: 400,
                      min: 0,
                      label: _currentSliderValue.round().toString(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                height: 185,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT', style: TextStyle(fontSize: 22)),
                            Text(
                              75.toString(),
                              style: TextStyle(fontSize: 37),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFF212747),
                                  child: IconButton(
                                    focusColor: Colors.amber,
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFF212747),
                                  child: IconButton(
                                    focusColor: Colors.amber,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE', style: TextStyle(fontSize: 22)),
                            Text(
                              75.toString(),
                              style: TextStyle(fontSize: 37),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFF212747),
                                  child: IconButton(
                                    focusColor: Colors.amber,
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFF212747),
                                  child: IconButton(
                                    focusColor: Colors.amber,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFF9116E),
            ),
            onPressed: () {},
            child: Text(
              'CALCULATE YOUR BMI',
              style: TextStyle(fontSize: 23),
            ),
          ),
        )
      ],
    );
  }
}
