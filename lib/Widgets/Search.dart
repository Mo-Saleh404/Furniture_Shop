import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
              width:362,height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.1,
                )
              ),
              child: Row(
                children: [
                  Gap(20),
                  Image.asset("assets/Home/Iconsearch.png",width: 17,),
                  Gap(14),
                  Text("Search for furniture",style: 
                  TextStyle(color: Color(0xff828282BD),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),),
                  Gap(96),
                  Image.asset("assets/Home/Line 1.png",height: 26,),
                  Gap(14),
                  Image.asset("assets/Home/settings.png",width: 20,),
                ],
              ),
            ),
          );
  }
}