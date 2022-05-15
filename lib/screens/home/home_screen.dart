

import 'package:flutter/material.dart';

import 'components/home_body.dart';

 class HomeScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Scaffold(

      appBar: CustomAppBar(),

      body: HomeBody(),
    )


    );
  }

    CustomAppBar (){
     return new AppBar(
       elevation: 0,
       centerTitle: true,
       title: new Text("Chats",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
       actions: [
         new Padding(
           padding: EdgeInsets.only(right: 10),
           child: new Icon(Icons.search,color: Colors.white,),
         )
       ],
     );
   }

 }
