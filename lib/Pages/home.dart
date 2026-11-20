import 'package:flutter/material.dart';
import 'package:furniture_shop/Model/ChairsModel.dart';
import 'package:furniture_shop/Model/SellerModel.dart';
import 'package:furniture_shop/Pages/product_Details.dart';
import 'package:furniture_shop/Widgets/Search.dart';
import 'package:furniture_shop/Widgets/customText.dart';
import 'package:furniture_shop/Widgets/customcard.dart';
import 'package:furniture_shop/Widgets/customcontainer.dart';
import 'package:furniture_shop/Widgets/customseller.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int selectContainer = -1; //عشان لما ندخل مفيش حاجه تبقا متعلمه -1
List<String> categories = ["Chairs", "Cupboard", "Tables", "Lamps"];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Customtext(
                text: "Discover The Best\n Furniture.",
                fontsize: 20,
                fontwidght: FontWeight.w600,
              ),
              Gap(115),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/Home/person.png"),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(29),
            Search(),
            Gap(24),
            Customtext(
              text: "Categories",
              fontsize: 20,
              fontwidght: FontWeight.w600,
            ),
            Gap(18),
            SizedBox(
              height: 45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => Gap(9),
                itemBuilder: (context, index) {
                  bool isselect = index == selectContainer;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectContainer = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isselect ? Color(0xff416954) : Color(0xffF2F2F2),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: isselect
                                  ? Colors.white
                                  : Color(0xff416954),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(30),
            SizedBox(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: chairs.length,
                separatorBuilder: (context, index) => Gap(17),
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((c) => ProductDetails(
                          image: chairs[index].image,
                           rate:chairs[index].rate,
                            title: chairs[index].title,
                             subtitle: chairs[index].subtitle,
                              Price: chairs[index].price,))),
                      );
                    },
                    child: Customcard(
                      image: chairs[index].image,
                      rate: chairs[index].rate,
                      title: chairs[index].title,
                      subtitle: chairs[index].subtitle,
                      price: chairs[index].price,
                    ),
                  );
                }),
              ),
            ),

            Gap(20),
            Customtext(
              text: "Best Seller",
              fontsize: 20,
              fontwidght: FontWeight.w600,
            ),
            Gap(25),
            SizedBox(
              height: 140,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: seller.length,
                separatorBuilder: (context, index) => Gap(17),
                itemBuilder: ((context, index) {
                  return GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((c) => ProductDetails(
                          image: seller[index].image,
                           rate:seller[index].rate,
                            title: seller[index].title,
                             subtitle: seller[index].subtitle,
                              Price: seller[index].price,))),
                      );
                    },
                    child: Customseller(
                      image: seller[index].image,
                      rate: seller[index].rate,
                      title: seller[index].title,
                      subtitle: seller[index].subtitle,
                      price: seller[index].price,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
