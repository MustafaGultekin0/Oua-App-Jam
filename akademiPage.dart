import 'package:flutter/material.dart';

class AkademiPage extends StatelessWidget {
  const AkademiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/images/akademi.png'),
          ],
        ),
      ),
    );
  }
}
