import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';

class ConversationBar extends StatelessWidget {
  const ConversationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...(Constant.conversationList).map((value) => value),
        ],
      ),
    );
  }
}