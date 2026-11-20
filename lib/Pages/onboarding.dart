import 'package:flutter/material.dart';
import 'package:furniture_shop/Pages/Home.dart';
import 'package:furniture_shop/Widgets/customcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/Onboarding/onboarding.png"),
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Text("Enjoy Your Online\n Shopping.",style: GoogleFonts.inter(
              textStyle:TextStyle(
                color: Color(0xff243B31),
                fontSize:26,
                fontWeight: FontWeight.w600,
              ) ),),
          ),
          Gap(17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Text("Browser through all categories and shop the best furniture \nfor your dream house",style: GoogleFonts.inter(
              textStyle:TextStyle(
                color: Color(0xff676767),
                fontSize:13,
                fontWeight: FontWeight.w400,
              ) ),),
          ),
          Gap(27),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Home()))
            );
          },
          child: Customcontainer(text: "Get Started"))
        ],
      ),
    );
  }
}