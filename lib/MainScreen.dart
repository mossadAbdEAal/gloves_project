import 'package:flutter/material.dart';
import 'package:gloves_app/connect_gloves.dart';
import 'package:gloves_app/custom_card_widget.dart';
import 'package:gloves_app/provider/settings_provider.dart';
import 'package:gloves_app/quiz.dart';
import 'package:gloves_app/learn_sign_screen.dart';
import 'package:gloves_app/transaltion_screen.dart';
import 'package:provider/provider.dart';
import 'custom_grid_builder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> Cards = [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TransaltionScreen(
                        text: 'Using Smart Glove',
                      )));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo8.png',
          text: 'Translation',
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LearnSignScreen()));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo9.png',
          text: 'Learn Sign',
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BluetoothScreen()));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo10.png',
          text: 'Connect Gloves',
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizScreen()));
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo11.png',
          text: 'Quiz',
        ),
      )
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(children: [
                  Consumer<UiProvider>(builder: (BuildContext context,
                      UiProvider notifier, Widget? child) {
                    return Container(
                        decoration: BoxDecoration(
                          color: notifier.isDark
                              ? const Color(0xff989898)
                              : const Color(0xffDAE0F1),
                        ),
                        height: 260,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/photo7.png',
                        ));
                  }),
                  Padding(
                    padding: EdgeInsets.only(top: 30, right: 20),
                  ),
                  CustomGridBuilder(
                    cards: Cards,
                    height: 250,
                    height2: 550,
                    paddingtop: 45,
                    countitem: 2,
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
