import 'package:flutter/material.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.bottoncolor});
  final String text;
  final Color textcolor;
  final Color bottoncolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 175,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: const WidgetStatePropertyAll(5),
            backgroundColor: WidgetStatePropertyAll(bottoncolor)),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textcolor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
