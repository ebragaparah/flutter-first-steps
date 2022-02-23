import 'package:flutter/material.dart';
import 'contacts/list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/bytebank_logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ContactsList())
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  width: 150,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.people, color: Colors.white, size: 24.0,),
                      Text("Contacts",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
    );
  }
}