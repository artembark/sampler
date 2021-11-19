import 'package:flutter/material.dart';

void main() {
  runApp(const SamplerApp());
}

class SamplerApp extends StatelessWidget {
  const SamplerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(Colors.red),
              buildButton(Colors.green),
              buildButton(Colors.blue),
              buildButton(Colors.red),
              buildButton(Colors.green),
              buildButton(Colors.blue),
              buildButton(Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildButton(Color buttonColor) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor)),
          onPressed: () {},
          child: Text('')),
    );
  }
}
