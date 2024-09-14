import 'package:bikeflip/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  final String image;
  final String label;
  final Color borderColor;

  CategoryModel({required this.image, required this.label,required this.borderColor});
}

List<CategoryModel> categoryList=[
  CategoryModel(image: 'mtb.png', label: 'MTB',borderColor: AppColors.appLightPurple),
  CategoryModel(image: 'road.png', label: 'Road',borderColor: const Color(0xFF5BF04E)),
  CategoryModel(image: 'ebike.png', label: 'eBike',borderColor: const Color(0xFFF1E041)),
  CategoryModel(image: 'city.png', label: 'City',borderColor:const Color(0xFFD95B79) ),
  CategoryModel(image: 'freecycle.png', label: 'Freecycle',borderColor:const Color(0xFF5BC2D9) ),
  CategoryModel(image: 'kids.png', label: 'Kids',borderColor:const Color(0xFFD9795B) ),
];