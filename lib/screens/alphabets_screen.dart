import 'package:flutter/material.dart';
import 'package:gloves_app/widgets/custom_grid_builder.dart';
import 'package:gloves_app/widgets/custom_item_widget.dart';
import 'package:gloves_app/widgets/custom_switch_widget.dart';

class AlphabetsScreen extends StatefulWidget {
  const AlphabetsScreen({super.key, required this.text});
  final String text;

  @override
  State<AlphabetsScreen> createState() => _AlphabetsScreenState();
}

class _AlphabetsScreenState extends State<AlphabetsScreen> {
  @override
  Widget build(BuildContext context) {
    List<CustomItemWidget> cards = const [
      CustomItemWidget(
        imagepath: 'assets/alphabets/a-removebg-preview.png',
        text: 'A',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/b-removebg-preview.png',
        text: 'B',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/cc-removebg-preview.png',
        text: 'C',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/dd-removebg-preview.png',
        text: 'D',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/e-removebg-preview.png',
        text: 'E',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/ff-removebg-preview.png',
        text: 'F',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/g-removebg-preview.png',
        text: 'G',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/h-removebg-preview.png',
        text: 'H',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/i-removebg-preview.png',
        text: 'I',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/j-removebg-preview.png',
        text: 'J',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/k-removebg-preview.png',
        text: 'K',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/l-removebg-preview.png',
        text: 'L',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/m-removebg-preview.png',
        text: 'M',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/n-removebg-preview.png',
        text: 'N',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/o-removebg-preview.png',
        text: 'O',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/p-removebg-preview.png',
        text: 'P',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/q-removebg-preview.png',
        text: 'Q',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/r-removebg-preview.png',
        text: 'R',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/s-removebg-preview.png',
        text: 'S',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/t-removebg-preview.png',
        text: 'T',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/u-removebg-preview.png',
        text: 'U',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/v-removebg-preview.png',
        text: 'V',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/w-removebg-preview.png',
        text: 'W',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/x-removebg-preview.png',
        text: 'X',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/y-removebg-preview.png',
        text: 'Y',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/z-removebg-preview.png',
        text: 'Z',
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
          widget.text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomGridBuilder(
        cards: cards,
        height: 1,
        color: const Color(0xffF2F2F2),
        paddingtop: 10,
        countitem: 2,
      ),
    );
  }
}
