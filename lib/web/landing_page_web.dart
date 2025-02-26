import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wazid_p/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
      body: ListView(children: [
        Container(
          height: heightDevice - 56,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Hello I am',
                      style: GoogleFonts.openSans(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    // to fit the image in circle use backgroundImage

                    radius: 140,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/wazid-circle.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
