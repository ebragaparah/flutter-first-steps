import 'package:bytebank/screens/contacts/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:bytebank/screens/transfer/list.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ContactsList(),
      home: Dashboard(),
      //home: TransferList(),
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}

