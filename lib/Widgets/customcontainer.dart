import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 54,
        width: 370,

        decoration: BoxDecoration(
          color: Color(0xff2C4939),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
