import 'package:flutter/material.dart';
import 'package:gloves_app/widgets/custom_elevation_button.dart';

import 'package:gloves_app/widgets/custom_switch_widget.dart';

class TranslationGlove extends StatelessWidget {
  const TranslationGlove({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 320,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset(
                        'assets/images/hand_pointing_somewhere-removebg-preview2.png',
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Turn on your bluetooth to continue.',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevationButton(
                      text: 'Retry',
                      textcolor: Colors.black,
                      bottoncolor: Color(0xffDAE0F1)),
                  CustomElevationButton(
                      text: 'Translate',
                      textcolor: Colors.white,
                      bottoncolor: Color(0xff1D2D44)),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15),
                child: Stack(children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Turn on your bluetooth to continue.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  Positioned(
                    left: 250,
                    right: 25,
                    top: 120,
                    bottom: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.save),
                        Icon(Icons.share_outlined),
                        Icon(Icons.star_border_purple500_rounded),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}