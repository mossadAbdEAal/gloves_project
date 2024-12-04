import 'package:flutter/material.dart';
import 'package:gloves_app/screens/alphabets_screen.dart';
import 'package:gloves_app/screens/days_screen.dart';
import 'package:gloves_app/screens/number_screen.dart';
import 'package:gloves_app/widgets/custom_card_widget.dart';
import 'package:gloves_app/widgets/custom_grid_builder.dart';
import 'package:gloves_app/widgets/custom_switch_widget.dart';

class LearnSignScreen extends StatelessWidget {
  const LearnSignScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> Cards = [
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AlphabetsScreen(
              text: 'Alphabets',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/ebbb509ca70fdaee31571d70c759060f.png',
          text: 'Alphabets',
          color: Color(0xffDAE0F1),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NumberScreen(
              text: 'Numbers',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/1a0a3395046e62af86b2008236cd2321.png',
          text: 'Numbers',
          color: Color(0xffDAE0F1),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DaysScreen(
              text: 'Days',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/ca5282a3e9daf13a0d7b8660b3727a81.png',
          text: 'Days',
          color: Color(0xffDAE0F1),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: SwitchExample(),
          )
        ],
        title: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: CustomGridBuilder(
          cards: Cards,
          height: 1,
          color: const Color(0xffF2F2F2),
          paddingtop: 150,
          countitem: 2,
        ),
      ),
    );
  }
}
