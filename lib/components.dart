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
    return MouseRegion(
      child: Text(
        widget.title,
        style: GoogleFonts.oswald(
            color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
