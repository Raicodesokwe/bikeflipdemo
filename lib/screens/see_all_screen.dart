
import 'package:bikeflip/utils/common_functions.dart';
import 'package:bikeflip/widgets/bicycle_card.dart';
import 'package:bikeflip/widgets/filters_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/see_all_appbar.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: screenHeight(context) * 0.035,),
           const SeeAllAppBar(),
           SizedBox(height: screenHeight(context) * 0.02,),
       const FiltersScreen(),
        SizedBox(height: screenHeight(context) * 0.02,),
      const BicycleCard()
          
          ],
        ),
      
      ),
    );
  }
}

