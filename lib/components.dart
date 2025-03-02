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
            ? GoogleFonts.oswald(
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
