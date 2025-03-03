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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/web.jpg',
                  height: heightDevice / 1.7,
                ),
                // Expanded is used to take the remaining space and fixed the overflow error
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold('About Me', 40),
                      SizedBox(height: 10),
                      Sans(
                          "👋 Hi, I'm Wazid, a passionate Flutter and Web Developer dedicated to building seamless, high-performance applications.",
                          15),
                      SizedBox(height: 10),
                      Sans(
                          'I have been developing mobile applications for over 1 years and have a strong understanding of Flutter, Dart, and Firebase.',
                          15),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Sans('Flutter', 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                          ),
                          SizedBox(width: 7),
                          Container(
                            child: Sans('Firebase', 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                          ),
                          SizedBox(width: 7),
                          Container(
                            child: Sans('Android', 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                          ),
                          SizedBox(width: 7),
                          Container(
                            child: Sans('IOS', 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                          ),
                          SizedBox(width: 7),
                          Container(
                            child: Sans('Web', 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            // end of second page
          ),
          // third page begin
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold('What I Do?', 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/webL.png',
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SansBold('Web Devlopment', 20),
                        ],
                      ),
                    ),
// Web Devlopment card end,

                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/app.png',
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SansBold('App Devlopment', 20),
                        ],
                      ),
                    ),
// App Devlopment card end
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/firebase.png',
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SansBold('Firebase Autentication', 20),
                        ],
                      ),
                    ),
                    // Firebase card end
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/blog.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SansBold('Blog', 20),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
