import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

  final String label;
  final bool ObscureText;
  const MyTextField({Key? key, required this.label, required this.ObscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: ObscureText,
        decoration: InputDecoration(
          hintText: label,
          filled: true,
          fillColor: Colors.black12,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),

          ),

        ),
      ),
    );
  }
}
