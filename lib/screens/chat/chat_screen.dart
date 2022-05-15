
import 'package:chat_ui_flutter/screens/chat/components/chat_body.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';

class ChatScreen extends StatelessWidget{
  User user;
     ChatScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Scaffold(
      appBar: customAppBar(),
      body: ChatBody(),
      backgroundColor: Colors.red,
    )
    );
  }

  customAppBar(){
    return new AppBar(
      elevation: 0.0,

      title: new Row(
        children: [
          new CircleAvatar(backgroundImage: AssetImage(user.imageUrl),radius: 10,),
          SizedBox(height: 5,),
          new Text(user.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}