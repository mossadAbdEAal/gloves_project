import 'package:flutter/material.dart';
import 'package:gloves_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class BluetoothScreen extends StatelessWidget {
  const BluetoothScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
        builder: (BuildContext context, UiProvider notifier, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Connected Devices"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image 125.png", height: 250),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  "Turn on your Bluetooth to connect devices.",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BluetoothSearchScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: notifier.isDark
                      ? Color(0xff007AD9)
                      : Color.fromRGBO(29, 45, 68, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Turn on",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class BluetoothSearchScreen extends StatefulWidget {
  const BluetoothSearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BluetoothSearchScreenState createState() => _BluetoothSearchScreenState();
}

class _BluetoothSearchScreenState extends State<BluetoothSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
        builder: (BuildContext context, UiProvider notifier, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Connected Devices",
            style: TextStyle(),
          ),
          iconTheme: const IconThemeData(),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 190,
                  width: 410,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: notifier.isDark ? Color(0xffBBC0C7) : Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 130),
                      child: Text(
                        "Finding Your devices",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(29, 45, 68, 1),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 215),
                      child: Text(
                        '1 device found ..',
                        style: TextStyle(
                          color: Color.fromRGBO(29, 45, 68, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'Please be patient we are doing our best for you',
                        style: TextStyle(
                          color: Color.fromRGBO(29, 45, 68, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 75),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.back_hand,
                              size: 20,
                            ),
                            const SizedBox(width: 9),
                            Text(
                              "Stop Searching",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(29, 45, 68, 1),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
              const SizedBox(height: 24),
              Image.asset(
                "assets/images/Group 109.png",
                height: 320,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConnectedDevicesScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: notifier.isDark
                      ? Color(0xff007AD9)
                      : Color.fromRGBO(29, 45, 68, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "See Search Result",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class ConnectedDevicesScreen extends StatefulWidget {
  @override
  _ConnectedDevicesScreenState createState() => _ConnectedDevicesScreenState();
}

class _ConnectedDevicesScreenState extends State<ConnectedDevicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => BluetoothSearchScreen()),
            );
          },
        ),
        title: Text(
          "Connected Devices",
          style: TextStyle(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Search results",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                leading: Icon(Icons.radio_button_off, color: Colors.black),
                title: Text(
                  "Smart Glove",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}