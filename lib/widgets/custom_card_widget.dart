import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key, required this.imagepath, required this.text});
  final String imagepath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffF2F2F2),
      clipBehavior: Clip.none,
      shadowColor: Colors.grey,
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              imagepath,
              width: 120,
              height: 120,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
