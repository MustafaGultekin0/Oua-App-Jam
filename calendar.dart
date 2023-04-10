import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/images/ocakTakvim.png'),
            SizedBox(height: 20,),
            Image.asset('lib/images/subatTakvim.png'),
            SizedBox(height: 20,),
            Image.asset('lib/images/martTakvim.png'),
            SizedBox(height: 20,),
            Image.asset('lib/images/nisanTakvim.png'),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
