import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
