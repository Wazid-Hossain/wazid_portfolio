import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wazid_p/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlluncher(String imagepath, String url) {
    return IconButton(
      onPressed: () async {
        await launchUrl(
          Uri.parse(url),
        );
      },
      icon: Image.asset(
        imagepath,
        width: 35.0,
        filterQuality: FilterQuality.high,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/wazid-circle.png'),
              ),
            ),
            SizedBox(height: 15),
            SansBold('Wazid Hossain', 30),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlluncher("assets/linkedin.png",
                    'https://www.linkedin.com/in/wazid-hossain/'),
                urlluncher(
                    'assets/github.png', 'https://github.com/Wazid-Hossain/'),
                urlluncher('assets/instagram.png',
                    'https://www.instagram.com/wazidhossain96/'),

                /* IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse("https://github.com/Wazid-Hossain/"),
                    );
                  },
                  icon: Image.asset(
                    "assets/github.png",
                    width: 35.0,
                    filterQuality: FilterQuality.high,
                  ),
                ) */
              ],
            )
          ],
        ),
      ),
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
          // Second Page Begin
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/web.jpg',
                  height: widthDevice / 1.9,
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
                          Flexible(
                            child: Container(
                              child: Sans('Web', 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 2,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(7.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // end of second page
          // third page begin
          Container(
            height: heightDevice / 1.3,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold('What I Do?', 40),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // app Devlopment card,

                      animationforwebcard(
                        imagepath: "assets/app.png",
                        text: 'App Devlopment',
                        fit: BoxFit.contain,
                        reverse: true,
                      ),

                      // App Devlopment card end

                      // web Devlopment card
                      animationforwebcard(
                          imagepath: "assets/webL.png", text: 'Web Devlopment'),
                      // web Devlopment card end
                      // Firebase card
                      animationforwebcard(
                        imagepath: "assets/firebase.png",
                        text: 'Backend Devlopment',
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      animationforwebcard(
                        imagepath: "assets/blog.jpg",
                        text: 'Bloging',
                        fit: BoxFit.contain,
                        // reverse: true,
                      ),
                      /* Firebase card end
                      Flexible(
                        child: Card(
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
                        ),
                      ),
                      end of blog card
                      */
                      // end of third page
                    ],
                  ),
                ],
              ),
            ),
          ),
          // end of what i do page
          // fourth page begin
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold('Contact Me', 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextFrom(
                            heading: 'First Name',
                            width: 350,
                            hinttext: 'Enter Your First Name'),
                        SizedBox(height: 10),
                        TextFrom(
                            heading: 'Your Mail',
                            width: 350,
                            hinttext: 'Enter Your Mail'),
                      ],
                    ),
                    Column(
                      children: [
                        TextFrom(
                            heading: 'Last Name',
                            width: 350,
                            hinttext: 'Enter Your Last Name'),
                        SizedBox(
                          height: 10,
                        ),
                        TextFrom(
                            heading: 'Contact Number',
                            width: 350,
                            hinttext: 'Enter Your Phone Number'),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    TextFrom(
                      heading: 'Message',
                      width: widthDevice / 1.5,
                      hinttext: 'Please Enter your Message',
                      maxline: 10,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.tealAccent,
                        height: 60,
                        minWidth: 200,
                        child: SansBold('Submit', 20),
                        onPressed: () {})
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
