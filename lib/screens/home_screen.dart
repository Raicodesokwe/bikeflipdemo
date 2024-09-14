
import 'package:bikeflip/utils/constants.dart';
import 'package:flutter/material.dart';
import '../utils/common_functions.dart';
import '../widgets/banner_screen.dart';
import '../widgets/category_selection.dart';
import '../widgets/last_searched.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> fadeAnimation;

    @override
  void initState() {
   
    controller =
        AnimationController(vsync: this, duration:const Duration(milliseconds: 200));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
   // Start the animation
    controller.forward();
     super.initState();
  }
  @override
  void dispose() {
   controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FadeTransition(
            opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CategorySelection(),
                 SizedBox(
                  height: screenHeight(context) * 0.03,
                 ),
               const  BannerScreen(),
                   SizedBox(
                  height: screenHeight(context) * 0.01,
                 ),
             const  Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20),
                 child:   Align(
                    alignment: Alignment.centerLeft,
                     child: Text('Last searched',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: AppColors.appLightBlack
                     ),),
                   ),
               ),
                 SizedBox(
                  height: screenHeight(context) * 0.01,
                 ),
              const   LastSearched(),
                 SizedBox(
                  height: screenHeight(context) * 0.03,
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

