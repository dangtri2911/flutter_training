import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';

class Story extends StatelessWidget {
  final String ava;
  final String name;
  final bool isOnline;
  final bool hasStory;
  const Story(this.ava, this.name, this.isOnline, this.hasStory);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: Constant.STORY_ITEM_SIZE,
          height: Constant.STORY_ITEM_SIZE,
          child: Stack(
            children: <Widget>[
              Container(
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
                                  image: NetworkImage(ava), fit: BoxFit.cover)),
                        ))
                    : null,
              ),
              isOnline? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color(0xFF66BB6A),
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFFFFFFFF), width: 3)),
                ),
              ): Container(),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 75,
          child: Align(
              child: Text(
            name,
            overflow: TextOverflow.ellipsis,
          )),
        ),
      ],
    );
  }
}
