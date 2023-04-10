import 'package:flutter/material.dart';
import 'package:oua_project/LoginPage(Yetismedi%20ama%20kodlar%20burada)/TextField.dart';
import 'package:oua_project/loginFile/my_button.dart';

class LoginPage extends StatelessWidget {

   LoginPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                // logo
                SizedBox(height: 40,),
                Image.asset("images/logo.png",),

                // Login
                SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Log In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
                ),
                // username
                SizedBox(height:20),
                // MyTextField(controller: emailcontroller,label: "E-mail",ObscureText: false,),
                MyTextField(label:"Username", ObscureText: false),
                SizedBox(height:20),
                MyTextField(label: "Password", ObscureText: true),

                // password
                SizedBox(height:20),
                //MyTextField(controller: passwordcontroller,label: "Password",ObscureText: false,),
                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot passsword?", style: TextStyle(color: Colors.black54),),
                    ],
                  ),
                ),
                SizedBox(height:10),





                SizedBox(height:10),
                myButton(onTap: (){},),


                //  continue with google
                SizedBox(height:20),
                Row(
                  children: [
                    Expanded(
                        child: Divider(thickness: 0.5,color: Colors.grey,)
                    ),

                    Text("Or continue with"),
                    Expanded(
                        child: Divider(thickness: 0.5,color: Colors.grey,)
                    ),

                  ],
                ),

                SizedBox(height:10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ) ,
                    onPressed: (){},
                    child: Image.asset("lib/images/g.png")),
                SizedBox(height:15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member,"),
                    SizedBox(width:4),
                    GestureDetector(
                      onTap:() {},
                        child: Text("Sign Up" , style: TextStyle(color: Colors.blueAccent),)),
                  ],
                ),

              ],

            ),
          ),
        )
    );
  }
}
