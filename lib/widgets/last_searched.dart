import 'package:flutter/material.dart';

import '../models/last_searched_model.dart';
import '../utils/common_functions.dart';
import '../utils/constants.dart';

class LastSearched extends StatelessWidget {
  const LastSearched({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(left: 20),
      child: Align(
       alignment: Alignment.centerLeft,
        child: Wrap(
          spacing: screenWidth(context) * 0.05,
          children: List.generate(lastSearchedList.length, (index) =>  Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: Colors.white,
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
               Image.asset('assets/images/${lastSearchedList[index].image}'),
                SizedBox(
           height: screenHeight(context) * 0.007,
          ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5),
                     child:    Text(lastSearchedList[index].label,style:const TextStyle(
          color: AppColors.appLightBlack,
          fontWeight: FontWeight.w500,
          fontSize: 15
                        ),),
                   ),
               SizedBox(
           height: screenHeight(context) * 0.008,
          ),
                         Padding(
             padding: const EdgeInsets.only(left: 5),
            child: Text(
             '${lastSearchedList[index].price}€',
             style:const TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 16,
               color: Colors.red
             ),
            ),
          ),
               SizedBox(
           height: screenHeight(context) * 0.015,
          ),
             ],
           ),
          ),)
          
          
        ),
      ),
    );
  }
}

