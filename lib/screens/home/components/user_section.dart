

 import 'package:chat_ui_flutter/models/message.dart';
import 'package:flutter/material.dart';

class UserSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: [
        new Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text("Favorite Contact",style: TextStyle(color: Color(0xffaaaaaa),fontWeight: FontWeight.bold),),
            new Icon(Icons.more_horiz,color: Color(0xffaaaaaa),),
          ],
        ),
        ),
      new SizedBox( height:10),
      new Container(
    height: 100,
      child:   new ListView.builder(
        scrollDirection: Axis.horizontal,
    itemCount: favorites.length,
    itemBuilder: (context,index)=>customBuilder(index) )

    )]
    );

  }
  Widget customBuilder(index){
    return new Padding(padding: EdgeInsets.only(left: 10),

    child: new SizedBox(
      height: 100,
      child: new Column(
        children: [
          new CircleAvatar(
            backgroundImage:AssetImage(favorites[index].imageUrl) ,
            radius: 20,
          ),
          new SizedBox(height: 10,),
          new Text(favorites[index].name,style: TextStyle(color: Color(0xffaaaaaa)),)
        ],
      ),
    ),
    );
  }
}