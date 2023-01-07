import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  String label;
  String text;

  InfoCard({
    super.key,
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0XFF2d2b30),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0XFFafacb0),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
