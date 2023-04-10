import 'package:flutter/material.dart';

class nisanAyi extends StatelessWidget {
  nisanAyi({Key? key}) : super(key: key);
  List<Event> events = [
    Event(name: 'App Jam Açılış Buluşması', date: DateTime(2023, 4, 6), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
    Event(name: 'Game Jam Açılış Buluşması', date: DateTime(2023, 4, 7), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
    Event(name: 'Game App Jam Ürün Geliştirme', date: DateTime(2023, 4, 8), time: TimeOfDay(hour: 9, minute: 0), location: 'Zoom'),
    Event(name: 'App Jam Soru Cevap Buluşması', date: DateTime(2023, 4, 8), time: TimeOfDay(hour: 17, minute: 0), location: 'Zoom'),
    Event(name: 'Game Jam Soru Cevap Buluşması & Tolgay Hıçkıran', date: DateTime(2023, 4, 8), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Game & App Jam Ürün Geliştirme', date: DateTime(2023, 4, 9), time: TimeOfDay(hour: 21, minute: 0), location: 'Zoom'),
    Event(name: 'Game & App Jam Ürünlerin Teslim Edilmesi', date: DateTime(2023, 4, 10), time: TimeOfDay(hour: 12, minute: 0), location: 'oyunveuygulamaakademisi'),
    Event(name: 'OUA & Tech to Rescue Webinar', date: DateTime(2023, 4, 11), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
    Event(name: 'Yazılımcılar için İngilizce Canlı Yayın 5', date: DateTime(2023, 4, 12), time: TimeOfDay(hour: 21, minute: 0), location: 'Zoom'),
    Event(name: 'Game & App Jam Sonuçlarının Açıklanması', date: DateTime(2023, 4, 14), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Nisan Ayi'),
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
