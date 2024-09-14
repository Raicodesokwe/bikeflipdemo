class AllBikesModel{
  final String image;
  final String size;
  final String label;
  final String seller;
  final String sellerImage;
  final String location;
 bool isLiked;
  final int price;

  AllBikesModel({required this.image, 
  required this.size,
  required this.seller,
  required this.sellerImage,
  required this.location,
  required this.isLiked,
  required this.label, required this.price });
}

List<AllBikesModel> allBikesList=[
  AllBikesModel(image: 'mondrakerbike.png', size: 'Size M, Almost New', seller: 'Angie',sellerImage: 'bikergirl.png', location: 'Munich', isLiked: false, label: 'Mondraker Foxy Carbon RR 2021', price: 2500),
  AllBikesModel(image: 'raleighmtb.png', size: 'Size M, Fairly Used', seller: 'Ken',sellerImage: 'bikerboy.png', location: 'Madrid', isLiked: false, label: 'Raleigh MTB fat overland', price: 1600),
];