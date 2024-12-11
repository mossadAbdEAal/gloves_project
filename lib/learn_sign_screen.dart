import 'package:flutter/material.dart';
import 'package:gloves_app/alphabets_screen.dart';
import 'package:gloves_app/days_screen.dart';
import 'package:gloves_app/number_screen.dart';
import 'package:gloves_app/custom_card_widget.dart';
import 'package:gloves_app/custom_grid_builder.dart';

// ignore: must_be_immutable
class LearnSignScreen extends StatelessWidget {
  const LearnSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> Cards = [
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AlphabetsScreen(
              text: 'Alphabets',
            );
          }));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo15.png',
          text: 'Alphabets',
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
        child: CustomCardWidget(
          imagepath: 'assets/images/photo16.png',
          text: 'Numbers',
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DaysScreen(
              text: 'Days',
            );
          }));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo17.png',
          text: 'Days',
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn Sign',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: CustomGridBuilder(
          cards: Cards,
          height: 1,
          paddingtop: 150,
          countitem: 2,
        ),
      ),
    );
  }
}
