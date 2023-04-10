import 'package:flutter/material.dart';


class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              height: 70.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                image: AssetImage("lib/images/profile.jpg"),),
              ),
            ),
            Text("Eren Doğan",
            style: TextStyle(color: Colors.white,fontSize: 20.0),
            ),
            Text("kullanici@gmail.com", style: TextStyle(color: Colors.grey[200],fontSize: 14,),),


          ],
        )
    );
  }
}
