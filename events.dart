
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:oua_project/months/%C5%9Eubat.dart';
import 'package:oua_project/months/Aral%C4%B1k.dart';
import 'package:oua_project/months/Haziran.dart';
import 'package:oua_project/months/Mart.dart';
import 'package:oua_project/months/May%C4%B1s.dart';
import 'package:oua_project/months/Nisan.dart';
import 'package:oua_project/months/Ocak.dart';
import 'package:oua_project/months/Temmuz.dart';

void main() {
  runApp(const EtkinlikSayfasi());
}

class EtkinlikSayfasi extends StatelessWidget {
  const EtkinlikSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    child: ListTile(
                      onTap: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tileColor: Colors.grey,
                      title: Text("Görüntülemek istediğiniz ayı seçiniz."),
                    ),
                  ),
                ),
                navigation(text: 'Aralik', widget: aralikAyi(), context: context),
                navigation(text: 'Ocak', widget: ocakAyi(), context: context),
                navigation(text: 'Subat', widget: subatAyi(), context: context),
                navigation(text: 'Mart', widget: martAyi(), context: context),
                navigation(text: 'Nisan', widget: nisanAyi(), context: context),
                navigation(text: 'Mayis', widget: mayisAyi(), context: context),
                navigation(
                    text: 'Haziran', widget: haziranAyi(), context: context),
                navigation(text: 'Temmuz', widget: temmuzAyi(), context: context),
              ],
            ),
          ),
        ));
  }
}

Widget navigation(
    {required String text, required Widget widget, BuildContext? context}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.shade300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context!, MaterialPageRoute(builder: (context) => widget));
              },
              child: Text(text)),
        ],
      ),
    ),
  );
}
