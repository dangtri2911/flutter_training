import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';

class Conversation extends StatelessWidget {
  final String name;
  final String ava;
  final bool isOnl;
  final bool hasStory;
  final String msg;
  final String time;
  const Conversation(
      this.name, this.ava, this.msg, this.time, this.isOnl, this.hasStory);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 18.0, right: 10),
                  width: Constant.STORY_ITEM_SIZE,
                  height: Constant.STORY_ITEM_SIZE,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: hasStory
                        ? Border.all(color: Colors.blueAccent, width: 3.0)
                        : null,
                    image: hasStory
                        ? null
                        : DecorationImage(
                            image: NetworkImage(ava), fit: BoxFit.cover),
                  ),
                  child: hasStory
                      ? Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: Constant.STORY_ITEM_SIZE + 15,
                            height: Constant.STORY_ITEM_SIZE + 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(ava),
                                    fit: BoxFit.cover)),
                          ))
                      : null,
                ),
                isOnl
                    ? Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFF66BB6A),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xFFFFFFFF), width: 3)),
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: Text(
                  msg + "   " + time,
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xFF000000).withOpacity(0.7)),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
