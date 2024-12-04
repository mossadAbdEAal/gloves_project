import 'package:flutter/material.dart';
import 'package:gloves_app/screens/learn_sign_screen.dart';
import 'package:gloves_app/widgets/custom_card_widget.dart';
import 'package:gloves_app/widgets/custom_grid_builder.dart';
import 'package:gloves_app/widgets/custom_switch_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> Cards = [
      GestureDetector(
        onTap: () {},
        child: const CustomCardWidget(
          imagepath: 'assets/images/fda86eccd9dab4c3af70de6333b9c1c6.jpeg',
          text: 'Translation',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LearnSignScreen(
              text: 'Learn sign',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/8027dfdbcdf8036254db9c69dafebfcb.png',
          text: 'Learn Sign',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const CustomCardWidget(
          imagepath: 'assets/images/739861a47f8d11d0e33f8e61144d5db8.png',
          text: 'Connect Gloves',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const CustomCardWidget(
          imagepath: 'assets/images/1548e8e53b726af3555f0f47e482cce0.png',
          text: 'Quiz',
          color: Color(0xffF2F2F2),
        ),
      )
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(alignment: Alignment.topRight, children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffDAE0F1),
                      ),
                      height: 300,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/ea041b33561d1efeb69566f0b5a3e1cf.png',
                      )),
                  const Padding(
                      padding: EdgeInsets.only(top: 30, right: 20),
                      child: SwitchExample()),
                ]),
                CustomGridBuilder(
                  cards: Cards,
                  height: 230,
                  height2: 550,
                  color: Colors.white,
                  paddingtop: 80,
                  countitem: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
