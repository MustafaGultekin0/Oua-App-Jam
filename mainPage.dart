import 'package:flutter/material.dart';
import 'package:oua_project/My_Header_Drawer.dart';
import 'package:oua_project/akademiPage.dart';
import 'package:oua_project/calendar.dart';
import 'package:oua_project/events.dart';
import 'package:oua_project/formlar.dart';
import 'package:oua_project/loginFile/LoginPage.dart';
import 'package:oua_project/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
          elevation: 0.0,
          title: Text("akademiHaber"),

          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CalendarPage();
              }));
            }, icon: Icon(Icons.event),),
        IconButton(onPressed: (){

        }, icon: IconButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return Profile();
          })
          );
        }, icon: Icon(Icons.person),),),

          ],
          bottom: TabBar(
            isScrollable: true,
              tabs: [Tab(text: "Anasayfa"),
                Tab(text: "Etkinlikler"),
                Tab(text: "Formlar"),
                Tab(text: "Akademi"),
              ],
          ),
        ),
        body: TabBarView(
          children: [
            Anasayfa(),
            EtkinlikSayfasi(),
            FormPages(),
            AkademiPage(),
          ],
        ),
        drawer: Drawer(child: SingleChildScrollView(child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
        ),
        ),
      ),
    );
  }
  ListView Anasayfa() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,

            child: Image.asset("lib/images/1.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,

            child:Image.asset("lib/images/2.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 100,

                child: Image.asset("lib/images/3.jpeg"),

              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,

            child: Image.asset("lib/images/4.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,

            child: Image.asset("lib/images/5.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.white,
            child:  Image.asset("lib/images/6.jpeg"),
          ),
        ),
      ],
    );
  }
  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          menuItem(),
          menuItem2(),
          menuItem3(),
          Divider(),
          menuItem4(),
          menuItem5(),
          Divider(),
          menuItem6(),
          menuItem7(),
          menuItem8(),

        ],
      ),
    );
  }
  Widget menuItem() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.dashboard_outlined, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Gösterge paneli", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem2() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.contacts_outlined, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Arkadaşlar", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem3() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.event_sharp, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Etkinlikler", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem4() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.settings, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Ayarlar", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem5() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.notifications_active_outlined, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Bildirimler", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem6() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.privacy_tip_outlined, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Gizlilik Politikası", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem7() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.feedback_outlined, size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Geribildirim gönder", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
  Widget menuItem8() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.logout_outlined , size: 20.0, color: Colors.black,),

              ),
              Expanded(
                flex: 3,
                child: Text("Çıkış yap", style: TextStyle(color:Colors.black, fontSize: 16.0),),),
            ],
          ),
        ),
      ),
    );
  }
}
