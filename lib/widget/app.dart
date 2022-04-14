import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';
import 'package:messenger_craft/widget/conversation_bar.dart';
import 'package:messenger_craft/widget/navbar.dart';
import 'package:messenger_craft/widget/search_bar.dart';
import 'package:messenger_craft/widget/story_bar.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left:  Constant.DEFAULT_SIZE / 2, right:  Constant.DEFAULT_SIZE / 2, top: 15),
        child: ListView(
          children: const <Widget>[
            Navbar(),
            SizedBox(height: 15),
            SearchBar(),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: StoryBar(),
            ),
            // StoryBar(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ConversationBar(),
            )
          ],
        ),
      )),
    );
  }
}
