import 'package:flutter/material.dart';
import 'package:gloves_app/widgets/custom_grid_builder.dart';
import 'package:gloves_app/widgets/custom_item_widget.dart';
import 'package:gloves_app/widgets/custom_switch_widget.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    List<CustomItemWidget> cards = const [
      CustomItemWidget(
        imagepath: 'assets/numbers/0.png',
        text: '0',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/1.png',
        text: '1',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/2.png',
        text: '2',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/3.png',
        text: '3',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/4.png',
        text: '4',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/5.png',
        text: '5',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/6.png',
        text: '6',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/7.png',
        text: '7',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/8.png',
        text: '8',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/9.png',
        text: '9',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomGridBuilder(
          cards: cards,
          height: 1,
          color: const Color(0xffF2F2F2),
          paddingtop: 10,
          countitem: 2,
        ),
      ),
    );
  }
}
