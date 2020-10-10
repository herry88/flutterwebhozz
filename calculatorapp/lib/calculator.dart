import 'package:calculatorapp/display.dart';
import 'package:calculatorapp/key-controller.dart';
import 'package:calculatorapp/key-pad.dart';
import 'package:calculatorapp/processor.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output;

  @override
  void initState() {
    KeyController.listen((event) => Processor.process(event));
    Processor.listen((data) => setState(() {
          _output = data;
        }));
    Processor.refresh();
    super.initState();
  }

  void dispose() {
    KeyController.dispose();
    Processor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double buttonSize = screen.width / 4;
    double displayHeight = screen.height - (buttonSize * 5) - (buttonSize);
    return Scaffold(
      backgroundColor: Color.fromARGB(196, 32, 64, 96),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Display(value: _output, height: displayHeight),
          KeyPad()
        ],
      ),
    );
  }
}
