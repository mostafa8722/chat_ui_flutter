import 'package:chat_ui_flutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';


 class App extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
    title: "Chat Ui flutter app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red
      ),
      home:HomeScreen()

      ,

    );
  }
 }