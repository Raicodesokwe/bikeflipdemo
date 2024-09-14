import 'package:bikeflip/screens/see_all_screen.dart';
import 'package:bikeflip/utils/navigation_util.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../utils/common_functions.dart';
import '../utils/constants.dart';

class CategorySelection extends StatefulWidget {
  
  const CategorySelection({
    super.key,
  });

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> with TickerProviderStateMixin {
  late AnimationController controller;
    late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    
    controller =
        AnimationController(vsync: this, duration:const Duration(milliseconds: 200));
     scaleController = AnimationController(
      vsync: this,
      duration:const Duration(milliseconds: 350),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(const Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
    super.initState();
  }
  @override
  void dispose() {
   controller.dispose();
    scaleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
                    'assets/images/bike-background.png',
                    height: screenHeight(context) * .55,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
               Padding(
                 padding:  EdgeInsets.only(left: screenWidth(context) * .05,right: screenWidth(context) * .05,top: screenHeight(context) * 0.03),
                 child:  Column(
                   children: [
                      const TextField(
                               decoration: InputDecoration(
                                 filled: true,
                                 fillColor: Colors.white, // White background
                                 hintText: 'Search...', // Placeholder text
                                 prefixIcon: Icon(Icons.search), // Optional: Search icon
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(30)), // Border radius of 30
                                   borderSide: BorderSide.none, // No visible border
                                 ),
                                 contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Padding inside the search field
                               ),
                             ),
                             SizedBox(
                               height: screenHeight(context)* 0.02,
                             ),
                             Row(
                               children: [
                               const  Text('Categories',style: TextStyle(color: Colors.white,
                                 fontSize: 17,fontWeight: FontWeight.w700
                                 ),),
                               const  Spacer(),
                                 GestureDetector(
                                  onTap: (){
                                    openScreen(context,const SeeAllScreen());
                                  },
                                   child:const Row(
                                     children: [
                                       Text('See All',style: TextStyle(color: Colors.white),),
                                       Icon(Icons.keyboard_arrow_right,color: Colors.white,)
                                     ],
                                   ),
                                 )
                               ],
                             ),
                             SizedBox(
                               height: screenHeight(context)* 0.015,
                             ),
                             Wrap(
                               runSpacing: 15,
                               spacing: screenWidth(context) * 0.05,
                               children: List.generate(categoryList.length, (index) => 
                                  ScaleTransition(
                                    scale: scaleAnimation,
                                    child: Container(
                                                                     height: 82,
                                                                     width: screenWidth(context) * 0.4,
                                                                     decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(8),
                                      gradient: LinearGradient(
                                       colors: [Colors.white.withOpacity(0.5), Colors.grey.withOpacity(0.2)],
                                       begin: Alignment.topLeft,
                                       end: Alignment.bottomRight,
                                     ),
                                                                     ),
                                                                     child: Container(
                                      margin:const EdgeInsets.all(1),
                                      padding: const EdgeInsets.only(left: 15),
                                     decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                       color: AppColors.appDarkPurple,
                                     ),
                                     child: Row(
                                       children: [
                                         Image.asset('assets/images/${categoryList[index].image}',height: 60,fit: BoxFit.fill,),
                                      const   SizedBox(width: 10,),
                                         Text(categoryList[index].label,style:const TextStyle(color: Colors.white,fontSize: 15),)
                                       ],
                                     ),
                                                                     ),
                                                                     
                                                                     ),
                                  ),
                               )
                               
                             
                             ),
                            
                   ],
                 ),
               ),
      ],
    );
  }
}