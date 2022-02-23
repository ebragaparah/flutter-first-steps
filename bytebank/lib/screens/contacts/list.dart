import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                  "Alex",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                  "1000",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}