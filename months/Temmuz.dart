import 'package:flutter/material.dart';

class temmuzAyi extends StatelessWidget {
  temmuzAyi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Temmuz Ayi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Temmuz Ayinda Etkinlik Yoktur.'),
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
