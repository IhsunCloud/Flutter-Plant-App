class Plant {
  String title, description, image, price;

  Plant({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });
}

List<Plant> plants = [
  Plant(
    title: 'آگلونما',
    description:
        'آگلونما یکی از مقاومترین و پر فایده ترین گیاهان آپارتمانی است که به دلیل نگهداری آسان و شکل ظاهری برگها، طرفداران زیادی دارد. یکی از مهمترین فواید این گیاه برای سلامتی انسان بر طبق تحقیقات نظریه هوای پاک ناسا، قدرت تصفیه هوای اتاق است.',
    image: 'assets/images/plant-7.png',
    price: '۲۵۰ هزار تومان',
  ),
  Plant(
    title: 'سانسوریا',
    description: '',
    image: 'assets/images/plant-3.png',
    price: '۲۵۰ هزار تومان',
  ),
];
