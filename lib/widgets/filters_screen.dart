import 'package:flutter/material.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  String selectedFilter=FilterSelected.all.name;
  _getFilterItem({required String filter,required String filterName}){
return  GestureDetector(
  onTap: (){
    setState(() {
      selectedFilter=filter;
    });
  },
  child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:selectedFilter==filter?AppColors.appDarkPurple: AppColors.appLightPink,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.6)
                        )
                      ),
                      child:filterName=='All'? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.sort,color:selectedFilter==filter?Colors.white: AppColors.appLightBlack,),
                        Text(filterName,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: selectedFilter==filter?Colors.white: AppColors.appLightBlack
                        ),)
                      ],):Center(
                        child: Text(filterName,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: selectedFilter==filter?Colors.white: AppColors.appLightBlack
                        ),),
                      ),
                     ),
);
}
  @override
  Widget build(BuildContext context) {
    return    Padding(
             padding: const EdgeInsets.only(left: 20),
             child: SizedBox(
              height: 45,
               child: ListView(
                scrollDirection: Axis.horizontal,
                physics:const BouncingScrollPhysics(),
                 children: [
                _getFilterItem(filter: FilterSelected.all.name, filterName: 'All'),
                SizedBox(width: screenWidth(context) * 0.02,),
                _getFilterItem(filter: FilterSelected.brand.name, filterName: 'Brand'),
                SizedBox(width: screenWidth(context) * 0.02,),
                _getFilterItem(filter: FilterSelected.size.name, filterName: 'Size'),
                SizedBox(width: screenWidth(context) * 0.02,),
                 ],
               ),
             ),
           );
  }
}