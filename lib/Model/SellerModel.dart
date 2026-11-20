class Sellermodel {

  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  Sellermodel({
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<Sellermodel> seller = [
  Sellermodel(
    image: "assets/Home/Rectangle 29.png",
     rate: "4.5",
      title: "Yellow Chair",
      subtitle: "Armchair",
       price: "₹ 10,500"),
  Sellermodel(
    image: "assets/Home/Rectangle 33.png",
     rate: "5.0",
      title: "Brown Chair",
      subtitle: "Armchair",
       price: "₹ 7,700"),
];
