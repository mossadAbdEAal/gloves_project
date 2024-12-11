import 'package:flutter/material.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton(
      {super.key, required this.text, required this.bottoncolor});
  final String text;

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
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
