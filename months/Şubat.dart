import 'package:flutter/material.dart';

class subatAyi extends StatelessWidget {
  subatAyi({Key? key}) : super(key: key);
  List<Event> events = [
    Event(name: 'Akademi Topluluk Buluşması', date: DateTime(2022, 2, 1), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Akademi Topluluk Buluşması', date: DateTime(2023, 2, 2), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Akademi Paylaşım Çemberi', date: DateTime(2023, 2, 27), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Subat Ayi'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return DecoratedBox(
            decoration: BoxDecoration(color: Colors.orange.shade50,border: Border.all(color: Colors.black,width: 3)),
            child: ListTile(
              title: Text(event.name),
              subtitle: Text('${event.date.day}.${event.date.month}.${event.date.year} ${event.time.format(context)} ${event.location}'),
            ),
          );
        },
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
