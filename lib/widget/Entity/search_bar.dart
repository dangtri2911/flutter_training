import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: const Color(0xFFe9eaec),
          borderRadius: BorderRadius.circular(Constant.DEFAULT_SIZE / 2)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search ...",
            prefixIcon: Icon(
              Icons.search,
              color: const Color(0xFF000000).withOpacity(0.8),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
