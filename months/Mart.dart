import 'package:flutter/material.dart';

class martAyi extends StatelessWidget {
  martAyi({Key? key}) : super(key: key);
  List<Event> events = [
    Event(name: 'Girişimciler için İK Canlı Yayını -1', date: DateTime(2023, 3, 2), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Akademi Psikolojik Bakım Seansı', date: DateTime(2023, 3, 6), time: TimeOfDay(hour: 20, minute: 30), location: 'Zoom'),
    Event(name: 'Akademi Ideathon Tema Tanıtımı', date: DateTime(2023, 3, 9), time: TimeOfDay(hour: 19, minute: 0), location: 'Youtube'),
    Event(name: 'Akademi Ideathon: Fikir Üretme', date: DateTime(2023, 3, 10), time: TimeOfDay(hour: 19, minute: 0), location: 'Zoom'),
    Event(name: 'Akademi Ideathon: Değer Önerisi Geliştirme-Sunum', date: DateTime(2023, 3, 11), time: TimeOfDay(hour: 11, minute: 0), location: 'Youtube'),
    Event(name: 'Akademi Ideathon Sonuçlarının Açıklanması', date: DateTime(2023, 3, 13), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Girişimcilik Soru Cevap Buluşması-3', date: DateTime(2023, 3, 14), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Girişimciler için İK Canlı Yayını - 2', date: DateTime(2023, 3, 15), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'OUA:Flutter Soru Cevap Buluşması -3', date: DateTime(2023, 3, 21), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Unity Soru Cevap Buluşması - 3', date: DateTime(2023, 3, 21), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Yazılımcılar için İngilizce Canlı Yayın 3', date: DateTime(2023, 3, 23), time: TimeOfDay(hour: 21, minute: 30), location: 'Zoom'),
    Event(name: 'Psikolog Desteği ile Akademi Paylaşım Çemberi -2', date: DateTime(2023, 3, 28), time: TimeOfDay(hour: 21, minute: 0), location: 'Zoom'),
    Event(name: 'Yazılımcılar için İngilizce Canlı Yayın 4', date: DateTime(2023, 3, 29), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
    Event(name: 'Girişimciler için Finans Soru Cevap Buluşması', date: DateTime(2023, 3, 30), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
    Event(name: 'Game & App Jam Süreç Anlatısı', date: DateTime(2023, 3, 31), time: TimeOfDay(hour: 21, minute: 0), location: 'Youtube'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Mart Ayi'),
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
