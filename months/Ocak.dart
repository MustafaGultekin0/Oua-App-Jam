import 'package:flutter/material.dart';

class ocakAyi extends StatelessWidget {
  ocakAyi({Key? key}) : super(key: key);
  List<Event> events = [
    Event(name: 'OUA Sosyal Beceri Eğitimleri: Ekip Çalışması-ÇatışmaYönetimi', date: DateTime(2023, 1, 4), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Hatalarla Başa Çıkma ve Algoritmik Düşünce Eğitimi', date: DateTime(2022, 1, 10), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Kariyer Buluşması 1', date: DateTime(2022, 1, 13), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Flutter Soru Cevap Buluşması -2', date: DateTime(2022, 1, 17), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Unity Soru Cevap Buluşması -2', date: DateTime(2022, 1, 17), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Yazılımcılar için İngilizce Canlı Yayın 1', date: DateTime(2022, 1, 18), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Girişimcilik Soru Cevap Buluşması-1', date: DateTime(2022, 1, 19), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Girişimcilik Soru Cevap Buluşması-2', date: DateTime(2022, 1, 25), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Yazılımcılar için İngilizce Canlı Yayın 2', date: DateTime(2022, 1, 26), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Slack Soru/Cevap Buluşması ve Huddle', date: DateTime(2022, 1, 31), time: TimeOfDay(hour: 12, minute: 30), location: 'Slack'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Ocak Ayi'),
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
