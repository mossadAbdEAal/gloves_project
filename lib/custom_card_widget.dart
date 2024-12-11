import 'package:flutter/material.dart';
import 'package:gloves_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({
    super.key,
    required this.imagepath,
    required this.text,
    this.width = 120,
    this.height = 120,
    this.fontsize = 16,
    this.color = Colors.white,
  });
  final String imagepath;
  final String text;
  final double width;
  Color color;
  final double height;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
        builder: (BuildContext context, UiProvider notifier, Widget? child) {
      return Card(
        color: notifier.isDark ? const Color(0xffDAE0F1) : Colors.white,
        clipBehavior: Clip.none,
        shadowColor: Colors.grey,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(
                imagepath,
                width: width,
                height: height,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontsize,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    });
  }
}
