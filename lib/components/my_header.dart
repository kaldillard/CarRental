// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  String name;
  MyHeader({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          foregroundImage: AssetImage("images/logo.png"),
          backgroundColor: Color(0XFFafacb0),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Good Morning",
                style: TextStyle(
                  color: Color(0XFFafacb0),
                )),
            Text("$name 👋",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
          ],
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert_sharp))
      ],
    );
  }
}
