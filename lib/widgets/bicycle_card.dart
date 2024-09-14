import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../models/all_bikes_model.dart';
import '../utils/common_functions.dart';
import '../utils/constants.dart';

class BicycleCard extends StatefulWidget {
  const BicycleCard({super.key});

  @override
  State<BicycleCard> createState() => _BicycleCardState();
}

class _BicycleCardState extends State<BicycleCard> {
  @override
  Widget build(BuildContext context) {
    return   Wrap(
          spacing: 15,
          direction: Axis.vertical,
          children: List.generate(allBikesList.length, (index) => 
          AnimationConfiguration.staggeredList(
            position: index,
             duration: const Duration(seconds: 1),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: Container(
                width: screenWidth(context) * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                   color: Colors.white,
                   border: Border.all(color: Colors.black.withOpacity(0.3)),
                   boxShadow: [
                     BoxShadow(
                       offset:const Offset(0, 4),
                       blurRadius: 4,
                       color: Colors.black.withOpacity(0.25)
                     )
                   ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/${allBikesList[index].image}'),
                         SizedBox(
                 height: screenHeight(context) * 0.007,
                ),
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 15),
                child:   Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(allBikesList[index].size,style:const TextStyle(color: AppColors.appLightBlack),),
                   const  Spacer(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          allBikesList[index].isLiked=!allBikesList[index].isLiked;
                        });
                      },
                      child: SvgPicture.asset(allBikesList[index].isLiked?'assets/images/likehearticon.svg':'assets/images/hearticon.svg'))
                  ],
                ),
              ),
                      SizedBox(
                 height: screenHeight(context) * 0.004,
                ),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(allBikesList[index].label,style:const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),),
                ),
                     SizedBox(
                 height: screenHeight(context) * 0.004,
                ),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
                child:   Text('${allBikesList[index].price}€',style:const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
                  SizedBox(
                 height: screenHeight(context) * 0.004,
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),child: Row(
                  children: [
                    Image.asset('assets/images/${allBikesList[index].sellerImage}'),
               const     SizedBox(width: 10,),
                       Text(allBikesList[index].seller,style:const TextStyle(fontSize: 18),),
                     const Spacer(),
                     Row(
               children: [
                 SvgPicture.asset('assets/images/mapicon.svg'),
               const  Text('Munich',style: TextStyle(color: AppColors.appLightBlack,fontWeight: FontWeight.w500),)
               ],
                     )
                  ],
                ),),
                 SizedBox(
                 height: screenHeight(context) * 0.01,
                ),
                  ],
                )),
            ),
          ),
          )
           
        );
  }
}