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
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(size: 25, color: Colors.black),
        title: Row(
          children: [
            //for space between text use Spacer();
            Spacer(flex: 3),
            TabsWeb('Home'),
            Spacer(),
            TabsWeb('Works'),
            Spacer(),
            TabsWeb('Blog'),
            Spacer(),
            TabsWeb('About'),
            Spacer(),
            TabsWeb('Contact'),
            Spacer(),
          ],
        ),
      ),
      body: CircleAvatar(
        radius: 103.0,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          // to fit the image in circle use backgroundImage

          radius: 100,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/wazid-circle.png'),
        ),
      ),
    );
  }
}
