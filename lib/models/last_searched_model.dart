class LastSearchedModel{
  final String image;
  final String label;
  final int price;

  LastSearchedModel({required this.image, required this.label, required this.price });
}

List<LastSearchedModel> lastSearchedList=[
  LastSearchedModel(image: 'raleighbike.png', label: 'Raleigh bike',price: 300),
  LastSearchedModel(image: 'bmxbike.png', label: 'Bmx bike',price: 250),
];