import 'package:flutter/material.dart';
import 'package:bytebank/screens/transfer/list.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransferList(),
      theme: ThemeData(
        primaryColor: Colors.pink[900],
        accentColor: Colors.greenAccent[400],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amberAccent[400],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}


