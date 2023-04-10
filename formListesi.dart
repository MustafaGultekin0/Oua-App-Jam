import 'package:flutter/material.dart';

class FormListesi extends StatelessWidget {
  const FormListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.purple[200],
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.people),radius: 15,),
              title: Text('Ideathon Katilim Formu'),
              subtitle: Text("09.03.2023"),
              trailing: Icon(Icons.link),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ), //aralarına çizgi tanımlamak için
          //Divider widget'ını tanımlıyoruz

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.lightBlue[200],
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.home),radius: 15,),
              title: Text("Adres Formu"),
              subtitle: Text("10.04.2023"),
              trailing: Icon(Icons.link),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.red[200],
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.radio_button_unchecked_outlined),radius: 15,),
              title: Text("Game & App Jam Katılım Formu"),
              subtitle: Text("31.03.2023"),
              trailing: Icon(Icons.link),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

        ],
      ),
    );
  }
}
