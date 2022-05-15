
import 'package:chat_ui_flutter/screens/chat/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/message.dart';

class ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return
        Expanded(
          child:   new ListView.builder(
            itemCount:chats.length ,
            itemBuilder: (context,index)=>chatCard(context,index,size),
          )
        );
  }

  Widget chatCard(context,index,size){
    return new GestureDetector(
      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>ChatScreen(user: chats[index].sender))
        );
      },
      child: Container(
          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
              color: chats[index].unread?Color(0xffffefee):Colors.white,
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(10),
                topLeft:Radius.circular(10),
              )
          ),
          height: 100,
          child: new Center(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(backgroundImage: AssetImage(chats[index].sender.imageUrl),),
                SizedBox(width: 10,),
                Expanded(
                    flex: 1,
                    child:
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        new Text(chats[index].sender.name),

                        new Container(
                          child:  new Text(chats[index].text,overflow: TextOverflow.ellipsis,),
                          width: size.width*0.45,

                        )


                      ],
                    )
                ),
                new Column(
                  children: [
                    new Text(chats[index].time),
                    new SizedBox(height: 10,),
                    chats[index].unread ? new Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: new Center(child: new Text("NEW",style: TextStyle(color: Colors.white,fontSize: 10),),),
                    ):new SizedBox(height: 0,),


                  ],
                )
              ],
            ),
          )

      ),
    );

  }
}