

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Colors.cyan,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white,),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 150.0),
                  child: Text("USER LOGIN",
                    style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0,top: 30.0,),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 70.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0 ,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                    margin: EdgeInsets.only(top:30.0,left: 10.0,),
                      alignment: Alignment.center,
                      width: 200.0,
                      height: 60.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "username",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                    ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0,top: 30.0,),
                    child: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.white,
                      size: 70.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:20.0,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                      ),
                    margin: EdgeInsets.only(top:30.0,left: 10.0,),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 60.0,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0,top: 30.0,),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 70.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30.0,left: 10.0),
                    width: 200.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ElevatedButton(
                        child: Text('LOGIN',
                        style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontSize:18.0),
                        ),
                        onPressed: null,
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.purple,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("forgot password?",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
