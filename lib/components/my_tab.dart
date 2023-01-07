import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTab extends StatelessWidget {
  MyTab(
      {super.key,
      required this.selected,
      required this.icon,
      required this.label});

  final bool selected;
  IconData? icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Container(
        decoration: BoxDecoration(
            color: selected == true
                ? const Color(0XFFd6ff45)
                : const Color(0XFF222025),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color(0XFFafacb0),
                size: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                label,
                style: const TextStyle(
                    color: Color(0XFFafacb0), fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
