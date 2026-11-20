import 'package:flutter/material.dart';
import 'package:furniture_shop/Pages/Home.dart';
import 'package:furniture_shop/Widgets/customText.dart';
import 'package:furniture_shop/Widgets/customcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.Price,
  });
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String Price;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

int count = 0;
int selectColor = 0;
List<Color> colors = [Color(0xff708483), Color(0xff626060), Color(0xffFF3434)];

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
  String cleanPrice = widget.Price.replaceAll(
  RegExp(r'[^0-9.]'),
  '',
);

double price = double.tryParse(cleanPrice) ?? 0.0;

double totalPrice = price * count;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffE3E3E3),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((c) => Home())),
                  );
                },
                child: Image.asset(
                  "assets/ProductDetails/Group 8.png",
                  width: 52,
                ),
              ),
              Image.asset("assets/ProductDetails/Group 12.png", width: 52),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(color: Color(0xffE3E3E3)),
            child: Stack(
              children: [
                Positioned(
                  left: 105,
                  top: 35,
                  child: Image.asset(widget.image, width: 205),
                ),
                Positioned(
                  left: 62,
                  top: 200,
                  child: Image.asset(
                    "assets/ProductDetails/Ellipse 4.png",
                    width: 290,
                  ),
                ),
                Positioned(
                  left: 199.31,
                  top: 290,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/ProductDetails/arrow-expand-03.png",
                      width: 16,
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 315,
                  child: Text(
                    "360°",
                    style: TextStyle(color: Color(0xff416954), fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 63),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Customtext(
                      text: widget.title,
                      fontsize: 20,
                      fontwidght: FontWeight.w600,
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
                              widget.rate,
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
                Gap(13),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: Color(0xff8E8E8E),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(19),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "The simple and elegant shape makes it very\nsuitable for those for you who like those of you\n who wants a minimalist room ",
                      ),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: Color(0xff416954),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/ProductDetails/Rectangle 36.png"),
                ),
                Gap(8),
                Container(
                  height: 50,
                  width: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/ProductDetails/Rectangle 37 (1).png",
                  ),
                ),
                Gap(8),
                Container(
                  height: 50,
                  width: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/ProductDetails/Rectangle 38.png"),
                ),
              ],
            ),
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Customtext(
                  text: "Color",
                  fontsize: 18,
                  fontwidght: FontWeight.w700,
                ),
                Gap(16),
                Row(
                  children: List.generate(colors.length, (index) {
                    final isselected = index == selectColor;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectColor = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isselected
                                ? colors[index].withOpacity(0.6)
                                : Colors.transparent,
                            width: isselected ? 3 : 0,
                          ),
                        ),
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: colors[index],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Gap(60),
                Container(
                  width: 66,height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffCDCBCB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count++;
                          });  },
                        child: Container(
                          width: 20,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/ProductDetails/Group 4.png",
                            width: 12,  ),  ),  ),
                      Text(
                        "$count",
                        style: TextStyle(
                          color: Color(0xff416954),
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (count > 1) {
                              count--;
                            }
                          });
                        },
                        child: Container(
                          width: 20,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/ProductDetails/Frame 20.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(29),
          Container(
            height: 54,
            width: 370,

            decoration: BoxDecoration(
              color: Color(0xff2C4939),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add to card |",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  "₹${totalPrice}",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
