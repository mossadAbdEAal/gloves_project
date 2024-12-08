import 'package:flutter/material.dart';
import 'package:gloves_app/screens/translation_glove.dart';
import 'package:gloves_app/widgets/custom_card_widget.dart';
import 'package:gloves_app/widgets/custom_switch_widget.dart';

class TransaltionScreen extends StatelessWidget {
  const TransaltionScreen({super.key, required this.text});
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TranslationGlove(
                    text: 'Translation using glove',
                  );
                }));
              },
              child: const CustomCardWidget(
                  fontsize: 22,
                  width: double.infinity,
                  height: 150,
                  imagepath:
                      'assets/images/hand_pointing_somewhere-removebg-preview.png',
                  text: 'Using Smart Glove',
                  color: Color(0xffDAE0F1)),
            ),
          ),
        ],
      ),
    );
  }
}
