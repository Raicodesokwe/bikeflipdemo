import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../utils/navigation_util.dart';

class SeeAllAppBar extends StatelessWidget {
  const SeeAllAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       GestureDetector(
        onTap: (){
          navigationPop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left,size: 40,color: AppColors.appLightBlack,)),
         SizedBox(width: screenWidth(context) * 0.02,),
          const  Expanded(
              child:  TextField(
                         decoration: InputDecoration(
                           filled: true,
                           fillColor: Colors.white, // White background
                           hintText: 'Search...', // Placeholder text
                           prefixIcon: Icon(Icons.search), // Optional: Search icon
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(30)), // Border radius of 30
                             borderSide: BorderSide(color: AppColors.appLightBlack), // No visible border
                           ),
                           contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Padding inside the search field
                         ),
                       ),
            ),
            SizedBox(width: screenWidth(context) * 0.02,),
          // const Icon(Icons.bookmark,color: AppColors.appLightPink,),
          SvgPicture.asset('assets/images/bookmark.svg'),
            SizedBox(width: screenWidth(context) * 0.02,),
      ],
    );
  }
}