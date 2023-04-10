import 'package:flutter/material.dart';
import 'package:oua_project/formListesi.dart';

class FormPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              form(
                link: '',
                formName: '',
                eventDate: '',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

class form extends StatelessWidget {
  final String link;
  final String formName;
  final String eventDate;

  form({required this.link, required this.formName, required this.eventDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 340,
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Etkinlik Tarihi: $eventDate',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Form Adı: $formName',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  GestureDetector(
                    onTap: () {
                      // Linki açmak için bir fonksiyon yazabilirsiniz.
                    },
                    child: Text(
                      'Link: $link',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('FormKaydet')
                  )
                ],
              ),
            ),
          ),

        ),
        SizedBox(height: 25,),
        ElevatedButton(
        onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context){
    return FormListesi();
    }));
    }, child: Text('Kayitli Formlar'),)
      ],
    );

  }
}
