import 'package:flutter/material.dart';
import 'package:wazid_p/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(size: 25, color: Colors.black),
        title: Row(
          children: [
            TabsWeb('Home'),
          ],
        ),
      ),
    );
  }
}
