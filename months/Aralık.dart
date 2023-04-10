import 'package:flutter/material.dart';

class aralikAyi extends StatelessWidget {
  aralikAyi({Key? key}) : super(key: key);
  List<Event> events = [
    Event(name: 'Akademi Oryantasyon Buluşması(Zorunlu)', date: DateTime(2022, 12, 1), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Akademi Tanışma Etkinliği(İsteğe Bağlı)', date: DateTime(2022, 12, 1), time: TimeOfDay(hour: 21, minute: 30), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 1', date: DateTime(2022, 12, 5), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'OUA Eğitim Başlangıç', date: DateTime(2022, 12, 6), time: TimeOfDay(hour: 19, minute: 45), location: 'oyunveuygulamaakademisi.com'),
    Event(name: 'Networking Eğitimi Grup 2', date: DateTime(2022, 12, 6), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 3', date: DateTime(2022, 12, 7), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 4', date: DateTime(2022, 12, 8), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 5', date: DateTime(2022, 12, 10), time: TimeOfDay(hour: 11, minute: 0), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 6', date: DateTime(2022, 12, 10), time: TimeOfDay(hour: 13, minute: 30), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 7', date: DateTime(2022, 12, 12), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Networking Eğitimi Grup 8', date: DateTime(2022, 12, 13), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Akademi Zaman Yönetimi Eğitimi', date: DateTime(2022, 12, 14), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'OUA Sosyal Beceri Eğitimleri:Kendi Potansiyelini Keşfetme-Şiddetsiz İletişim-Otonomi', date: DateTime(2022, 12, 15), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Algoritmik Düşünceye Girişser', date: DateTime(2022, 12, 20), time: TimeOfDay(hour: 20, minute: 0), location: 'Youtube'),
    Event(name: 'Flutter Soru Cevap Buluşması', date: DateTime(2022, 12, 21), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'Unity Soru Cevap Buluşması', date: DateTime(2022, 12, 21), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
    Event(name: 'OUA Sosyal Beceri Eğitimleri: Rezilyans-Liderlik-Öğrenme Çevikliği', date: DateTime(2022, 12, 22), time: TimeOfDay(hour: 20, minute: 0), location: 'Zoom'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('Aralik Ayi'),
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
