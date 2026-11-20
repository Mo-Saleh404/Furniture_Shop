import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key, required this.image, required this.rate, required this.title, required this.subtitle, required this.price});
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(5),
            Center(
              child: Container(
                height: 183,
                width: 177,
                decoration: BoxDecoration(
                  color: Color(0xffE3E3E3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Gap(10),
                    Image.asset(image, width: 125),
                    Gap(5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 33,
                            height: 17,
                            decoration: BoxDecoration(
                              color: Color(0xffFF0404),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "NEW",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 33,
                            height: 17,
                            decoration: BoxDecoration(
                              color: Color(0xffFFF0BA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Gap(2),
                                Icon(Icons.star, size: 12, color: Colors.orange),
              
                                Center(
                                  child: Text(
                                    rate,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xffF4BB00),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xff828282E8),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(75),
                  Container(
                    width: 47,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xff416954),
                    ),
                    child: Icon(Icons.add, color: Colors.white, weight: 14),
                  ),
                ],
              ),
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
