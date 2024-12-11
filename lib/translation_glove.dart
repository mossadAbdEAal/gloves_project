import 'package:flutter/material.dart';
import 'package:gloves_app/custom_elevation_button.dart';
import 'package:gloves_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class TranslationGlove extends StatelessWidget {
  const TranslationGlove({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
        builder: (BuildContext context, UiProvider notifier, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25.0),
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
                      color: Color(0xffDAE0F1),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Image.asset(
                          'assets/images/hand pointing somewhere (1).png',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomElevationButton(
                        text: 'Retry',
                        textcolor: Colors.black,
                        bottoncolor: Color(0xffDAE0F1)),
                    CustomElevationButton(
                        text: 'Translate',
                        textcolor: Colors.white,
                        bottoncolor: notifier.isDark
                            ? const Color(0xff007AD9)
                            : const Color.fromRGBO(29, 45, 68, 1)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 3.0, bottom: 15, right: 13),
                  child: Stack(children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Turn on your bluetooth to continue.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          )),
                    ),
                    Positioned(
                      left: 210,
                      right: 20,
                      top: 120,
                      bottom: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.save,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star_border_purple500_rounded,
                            color: Colors.black,
                          ),
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
    });
  }
}
