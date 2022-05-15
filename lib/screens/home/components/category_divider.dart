
import 'package:flutter/material.dart';

class CategoryDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 20,
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(
        color: Colors.red,

      ),
      child:  new Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            color: Color(0xffeeeeee),

            borderRadius: BorderRadius.only(

              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )
        ),
      ),
    );
  }
}