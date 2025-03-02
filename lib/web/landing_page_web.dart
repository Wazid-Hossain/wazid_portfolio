import 'package:flutter/material.dart';
import 'package:wazid_p/components.dart';
import 'package:wazid_p/components/SansBold.dart';

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
      body: ListView(
        children: [
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: SansBold('Hello i am', 15),
                      ),
                    ),
                    SizedBox(height: 10),
                    SansBold('Wazid Hossain', 50),
                    Sans('Flutter Devloper', 30),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('mwh.wajid96@gmail.com', 15),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('+880 1784 880 361', 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('Dhaka, Bangladesh', 15),
                      ],
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
          // Second Page BeginSS
          Container(
            height: heightDevice / 1.5,
            child: Column(
              children: [SansBold('About Me', 30)],
            ),
          )
        ],
      ),
    );
  }
}
