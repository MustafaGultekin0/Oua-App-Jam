import 'package:flutter/material.dart';
import 'package:oua_project/anasayfa.dart';

class myButton extends StatefulWidget {
  final Function()? onTap;
  const myButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent[900],
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child:
          Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 15),),
        ),
      ),
    );
  }
}
