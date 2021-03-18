import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [Text("What would"), Text("you like to eat?")],
              ),
              Icon(Icons.notifications),
            ],
          )
        ],
      ),
    );
  }
}
