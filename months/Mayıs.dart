import 'package:flutter/material.dart';

class mayisAyi extends StatelessWidget {
  mayisAyi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Mayis Ayi'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mayis Ayinda Etkinlik Yoktur.'),
        ],
      ),
    );
  }
}
class Event {
  String name;
  DateTime date;
  TimeOfDay time;
  String location;

  Event({required this.name, required this.date, required this.time, required this.location});
}
