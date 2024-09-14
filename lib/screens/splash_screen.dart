import 'package:bikeflip/screens/home_screen.dart';
import 'package:bikeflip/utils/constants.dart';
import 'package:bikeflip/utils/navigation_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/common_functions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: SizedBox(
               width: screenWidth(context) * 0.87, 
                child: Lottie.asset('assets/images/bike.json')),
            ),
            SizedBox(height: screenHeight(context) * 0.05,),
            Text('Bikeflip',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: screenWidth(context) * 0.1),),
            SizedBox(height: screenHeight(context) * 0.03,),
          const Center(
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20),
               child:  Text('Looking for a way to buy or sell used & refurbished bicycles in a simple and intuitive app? Use Bikeflip, Europe’s #1 marketplace app for cycling enthusiasts! Save real money on your next purchase and be part of the secondhand revolution',style: TextStyle(color: Colors.white,fontSize: 15),),
             ),
           ),
           SizedBox(height: screenHeight(context) * 0.085,),
           Center(
             child: GestureDetector(
              onTap: (){
                openScreen(context,const HomeScreen());
              },
               child: Container(
                height: 50,
                width: screenWidth(context) * .8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.appLightPurple
                ),
                child:const Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),),
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}