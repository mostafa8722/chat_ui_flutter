import 'package:flutter/material.dart';


  class CategorySelector extends StatefulWidget{
      @override
  State<StatefulWidget> createState() => CategorySelectorState();
  }

  class CategorySelectorState extends State<CategorySelector> {
    List<String> categories = ["Messages","Online","Groups","Channels","Contacts"];
    var _selectedIndex = 0;
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.only(left: 10),
      height: 50,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>customItemBuilder(index)),
    );
  }
  Widget customItemBuilder(index){
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new GestureDetector(
            onTap: (){
              setState(() {
                _selectedIndex = index;
              });
            },
            child:   new Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5)
              ,child: new Text(categories[index],style: TextStyle(color:_selectedIndex==index?Colors.white:Colors.white.withOpacity(0.65) ,fontWeight: FontWeight.bold,fontSize: 15),),
            ),
          )
        ],
      );
  }
  }