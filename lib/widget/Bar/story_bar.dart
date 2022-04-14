import 'package:flutter/material.dart';
import 'package:messenger_craft/utils/constant.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: Constant.STORY_ITEM_SIZE,
              height: Constant.STORY_ITEM_SIZE,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: const Color.fromARGB(78, 10, 90, 209), width: 3.0),
              ),
              child: const Center(
                child: Icon(Icons.add, size: Constant.STORY_ITEM_SIZE / 2),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 75,
              child: Align(
                  child: Text(
                'Your Story',
                overflow: TextOverflow.ellipsis,
              )),
            )
          ],
        ),
        ...(Constant.storyList).map((value) => value),
      ],
    );
  }
}
