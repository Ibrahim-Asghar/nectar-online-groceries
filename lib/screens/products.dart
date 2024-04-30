class Product {
  final String name;
  final String details;
  final String image;
  final double price;
  final String category;

  Product(
      {required this.name,
      required this.details,
      required this.image,
      required this.price,
      required this.category});

  toLowerCase() {}

  static where(Function(dynamic product) param0) {}

  static void onSearch(searchResults) {}
// }
}

class ProductList {
  static final List<Product> products = [
    // 0
    Product(
      name: 'Organic Bananas',
      details: '7pcs, Price',
      image: 'assets/images/banana.jpg',
      price: 4.99,
      category: 'Fresh Fruits & Vegetable',
    ),
    // 1
    Product(
      name: 'Red Apple',
      details: '1kg, Price',
      image: 'assets/images/apple.jpg',
      price: 4.99,
      category: 'Fresh Fruits & Vegetable',
    ),
    // 2
    Product(
      name: 'Bell Pepper\nRed',
      details: '1kg, Price',
      image: 'assets/images/redpepper.jpg',
      price: 4.99,
      category: 'Fresh Fruits & Vegetable',
    ),
    // 3
    Product(
      name: 'Ginger',
      details: '250gm, Price',
      image: 'assets/images/ginger.jpg',
      price: 4.99,
      category: 'Fresh Fruits & Vegetable',
    ),
    // 4
    Product(
      name: 'Beef Bone',
      details: '1kg, Price',
      image: 'assets/images/beef.jpg',
      price: 4.99,
      category: 'Meat & Fish',
    ),
    // 5
    Product(
      name: 'Boiler Chicken',
      details: '1kg, Price',
      image: 'assets/images/chicken.jpg',
      price: 4.99,
      category: 'Meat & Fish',
    ),
    // 6
    Product(
      name: 'Diet Coke',
      details: '355ml, Price',
      image: 'assets/images/coke.jpg',
      price: 1.99,
      category: 'Beverages',
    ),
    // 7
    Product(
      name: 'Sprite Can',
      details: '325ml, Price',
      image: 'assets/images/sprite.jpg',
      price: 1.50,
      category: 'Beverages',
    ),
    // 8
    Product(
      name: 'Apple & Grape\nJuice',
      details: '2L, Price',
      image: 'assets/images/juice.jpg',
      price: 15.99,
      category: 'Beverages',
    ),
    // 9
    Product(
      name: 'Orange Juice',
      details: '2L, Price',
      image: 'assets/images/juice1.jpg',
      price: 15.99,
      category: 'Beverages',
    ),
    // 10
    Product(
      name: 'Coca Cola\nCan',
      details: '325ml, Price',
      image: 'assets/images/cocacola.jpg',
      price: 4.99,
      category: 'Beverages',
    ),
    // 11
    Product(
      name: 'Pepsi Can',
      details: '330ml, Price',
      image: 'assets/images/pepsi.jpg',
      price: 4.99,
      category: 'Beverages',
    ),
    // 12
    Product(
      name: 'Egg Chicken\nRed',
      details: '4pcs, Price',
      image: 'assets/images/redegg.jpg',
      price: 1.99,
      category: 'Dairy & Eggs',
    ),
    // 13
    Product(
      name: 'Egg Chicken\nWhite',
      details: '180g, Price',
      image: 'assets/images/eggwhite.jpg',
      price: 1.50,
      category: 'Dairy & Eggs',
    ),
    // 14
    Product(
      name: 'Egg Pasta ',
      details: '30gm, Price',
      image: 'assets/images/pasta.jpg',
      price: 15.99,
      category: 'Bakery & Snacks',
    ),
    // 15
    Product(
      name: 'Egg Noodles',
      details: '2L, Price',
      image: 'assets/images/noodles.jpg',
      price: 15.99,
      category: 'Bakery & Snacks',
    ),
    // 16
    Product(
      name: 'Mayonnais\nEggless',
      details: '325ml, Price',
      image: 'assets/images/mayonnaise.jpg',
      price: 4.99,
      category: 'Bakery & Snacks',
    ),
    // 17
    Product(
      name: 'Egg Noodles',
      details: '330ml, Price',
      image: 'assets/images/noodles1.jpg',
      price: 4.99,
      category: 'Bakery & Snacks',
    ),
  ];
}
