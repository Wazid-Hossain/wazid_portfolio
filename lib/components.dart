import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // for 'home' text hover used MouseRegion who return a function whice are (_) { and for change the state use setstate({})
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        print('Entered');
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        print('Exited');
      },
      // For Animated the 'Home' Text warped with AnimatedDefaultTextStyle widget
      child: AnimatedDefaultTextStyle(
        duration: const Duration(microseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.roboto(
                shadows: [
                  Shadow(
                    color: Colors.transparent,
                    offset: Offset(0, -8),
                  ),
                ],
                color: Colors.black,
                fontSize: 30.0,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 23.0,
              ),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

// create a new class named sans who return a text widget with google font open sans and size and we used this class in the landing page web.
class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

// create a new class named TextFrom who return a column widget with children and we used this class in the landing page web.

class TextFrom extends StatelessWidget {
  final heading;
  final width;
  final hinttext;
  final maxline;
  const TextFrom(
      {super.key,
      @required this.heading,
      @required this.width,
      @required this.hinttext,
      this.maxline});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16),
        SizedBox(height: 10),
        Column(
          children: [
            SizedBox(
              width: width,
              child: TextFormField(
                maxLines: maxline == null ? null : maxline,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: hinttext,
                  hintStyle: GoogleFonts.poppins(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class animetioncardweb extends StatefulWidget {
  final imagepath;
  final text;
  final fit;
  final reverse;
  const animetioncardweb(
      {super.key,
      @required this.imagepath,
      @required this.text,
      this.fit,
      this.reverse});

  @override
  State<animetioncardweb> createState() => _animetioncardwebState();
}

class _animetioncardwebState extends State<animetioncardweb> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
