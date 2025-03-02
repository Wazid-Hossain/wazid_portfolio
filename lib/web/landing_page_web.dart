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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold('About Me', 40),
                SizedBox(height: 10),
                Sans(
                    "As a skilled Flutter Developer, I specialize in building high-performance, visually appealing, and responsive cross-platform mobile and web applications. With a passion for clean code and user-centric design, I have successfully delivered a variety of projects across industries, ranging from e-commerce to health and fitness. My expertise lies in leveraging the full potential of Flutter's capabilities to create seamless and scalable applications for both Android and iOS platforms.",
                    15),
                SizedBox(height: 10),
                Sans(
                    'With a deep understanding of Dart, state management techniques (such as Provider, Riverpod, and Bloc), and integrations with REST APIs and Firebase, I am committed to delivering solutions that meet user needs while ensuring smooth performance and robust functionality. Additionally, I prioritize maintaining a collaborative approach, working effectively with UI/UX designers, backend developers, and project managers to bring ideas to life.',
                    15),
                Sans('Flutter', 20)
              ],
            ),
          )
        ],
      ),
    );
  }
}
