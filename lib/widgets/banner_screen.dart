import 'package:flutter/material.dart';

import '../utils/common_functions.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: screenHeight(context) * 0.18,
     child: Padding(
       padding: const EdgeInsets.only(left: 20),
       child: ListView(
       scrollDirection: Axis.horizontal,
       physics:const BouncingScrollPhysics(),
       children: [
       Image.asset('assets/images/bikeone.png'),
       SizedBox(width: screenWidth(context) * 0.02,),
        Image.asset('assets/images/biketwo.png'),
        SizedBox(width: screenWidth(context) * 0.01,),
       ],
                    ),
     ),
    );
  }
}

