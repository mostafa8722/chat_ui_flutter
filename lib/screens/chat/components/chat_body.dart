
import 'package:flutter/material.dart';

import '../../../models/message.dart';

class ChatBody extends StatelessWidget{

  String me = "Current User";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
        decoration: BoxDecoration(
            color: Color(0xfff2e1b3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
      child: new Column(
        children: [
          new Expanded(child:  new ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context,index)=>chatCard(index,size) )),
          new Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xfff2e1b3),
            ),
            child:   new Row(
              children: [
                new SizedBox(width: 5,),
               new Expanded(
                 child:  new Container(
                   decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white
                   ),
                    child:
                   new Row(
                     children: [
                       new Icon(Icons.emoji_emotions_outlined,color: Color(0xff999999),),
                       new Expanded(child:
                       new TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "message..."
                         ),
                       )
                       ),
                       new Icon(Icons.attach_file,color:  Color(0xff999999),),
                       new SizedBox(width: 5,),
                       new Icon(Icons.camera_alt,color:  Color(0xff999999),),
                       new SizedBox(width: 5,)
                     ],
                   )
                   ,
                 ),

               ),
                new SizedBox(width: 3,),
               new Container(
                 height: 40,
                 width: 40,
                 decoration: new BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.green
                 ),
                 child: new Center(
                   child:   new Icon(Icons.mic,color: Colors.white,) ,
                 ),
               ),
                new SizedBox(width: 2,)

              ],
            ),
          )
          
        ],
        
      ),
    

    );
  }
  Widget chatCard(index,size){
    bool currentUser = messages[index].sender.name==me;
    return new Container(

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: new Row(
        mainAxisAlignment: currentUser?MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          new Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: currentUser?Colors.green : Color(0xffeeeeee)
             ),
             child: new Column(
             children: [
               new Text(messages[index].text,style:TextStyle(color: currentUser?Colors.white : Color(0xff999999)) ,),
               SizedBox(height:5 ,),
               new Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   new Text(messages[index].time,style:TextStyle(color: currentUser?Colors.white : Color(0xff999999)) ,),
                 ],
               ),
               SizedBox(height:5 ,)
             ],
             ),
          ),
          SizedBox(width:5 ,),
          !currentUser?
          new Icon(messages[index].isLiked?Icons.favorite:Icons.favorite_border,color:messages[index].isLiked?Colors.red:Color(0xffaaaaaa) ,)
              :new SizedBox(width: 5,),
        ],
      ),
    );
  }

}