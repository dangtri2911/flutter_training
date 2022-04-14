import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_craft/utils/constant.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
 @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: Constant.DEFAULT_SIZE,
          height: Constant.DEFAULT_SIZE,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.greenAccent),
              image: const DecorationImage(
                  image: NetworkImage(Constant.AVA_URL), fit: BoxFit.cover)),
        ),
        const Text("Messenger",
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
        const Icon(
          Icons.edit,
          size: Constant.DEFAULT_SIZE / 2,
        ),
      ],
    );
  }
}
