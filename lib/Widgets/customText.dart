import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customtext extends StatelessWidget {
  const Customtext({super.key, required this.text, required this.fontsize, required this.fontwidght});
  final String text;
  final double fontsize;
  final FontWeight fontwidght;
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Color(0xff416954),
          fontSize: fontsize,
          fontWeight: fontwidght,
        ),
      ),
    );
  }
}
