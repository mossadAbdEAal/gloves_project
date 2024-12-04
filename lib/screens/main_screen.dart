import 'package:flutter/material.dart';
import 'package:gloves_app/widgets/custom_card_widget.dart';
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
    List<Widget> Cards = const [
      CustomCardWidget(
        imagepath: 'assets/images/fda86eccd9dab4c3af70de6333b9c1c6.jpeg',
        text: 'Translation',
      ),
      CustomCardWidget(
        imagepath: 'assets/images/8027dfdbcdf8036254db9c69dafebfcb.png',
        text: 'Learn Sign',
      ),
      CustomCardWidget(
        imagepath: 'assets/images/739861a47f8d11d0e33f8e61144d5db8.png',
        text: 'Connect Gloves',
      ),
      CustomCardWidget(
        imagepath: 'assets/images/1548e8e53b726af3555f0f47e482cce0.png',
        text: 'Quiz',
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
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: Colors.white),
                    height: 550,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 15.0, // spacing between rows
                        crossAxisSpacing: 15.0, // spacing between columns
                      ),
                      padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 80), // padding around the grid
                      itemCount: Cards.length, // total number of items
                      itemBuilder: (context, index) {
                        return Cards[index];
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
