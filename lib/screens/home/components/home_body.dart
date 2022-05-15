
  import 'package:chat_ui_flutter/screens/home/components/category_divider.dart';
import 'package:chat_ui_flutter/screens/home/components/chat_section.dart';
import 'package:chat_ui_flutter/screens/home/components/user_section.dart';
import 'package:flutter/material.dart';

import 'category_selector.dart';

class HomeBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [

        CategorySelector(),

        CategoryDivider(),
        UserSection(),
        ChatSection()


      ],
    );
  }
}