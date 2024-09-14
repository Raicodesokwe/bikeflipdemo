class CategoryModel{
  final String image;
  final String label;

  CategoryModel({required this.image, required this.label});
}

List<CategoryModel> categoryList=[
  CategoryModel(image: 'mtb.png', label: 'MTB'),
  CategoryModel(image: 'road.png', label: 'Road'),
  CategoryModel(image: 'ebike.png', label: 'eBike'),
  CategoryModel(image: 'city.png', label: 'City'),
  CategoryModel(image: 'freecycle.png', label: 'Freecycle'),
  CategoryModel(image: 'kids.png', label: 'Kids'),
];