import 'package:flutter/material.dart';
import 'dart:math';

// class ProductsViewModel extends ChangeNotifier {
//
//   /// for shoes
//   List _shoes = [
//     [1, 'louis Vuition', '\$493.00', 'assets/images/shoes/shoe1.jpg'],
//     [2, 'Supreme', '\$593.00', 'assets/images/shoes/shoe2.jpg'],
//     [3, 'Dior', '\$693.00', 'assets/images/shoes/shoe3.jpg'],
//     [4, 'Dolce sneek', '\$403.00', 'assets/images/shoes/shoe4.jpg'],
//     [5, 'Sneakers Loo', '\$93.00', 'assets/images/shoes/shoe5.jpg'],
//     [6, 'JonnyFoot', '\$43.00', 'assets/images/shoes/shoe6.jpg'],
//     [7, 'Amazing FootWr', '\$23.00', 'assets/images/shoes/shoe8.jpg'],
//     [8, 'Burberry', '\$1493.00', 'assets/images/shoes/shoe9.jpg'],
//     [9, 'Cover Sleeks', '\$34.00', 'assets/images/shoes/shoe10.jpg'],
//     [10, 'Supreme max', '\$49.00', 'assets/images/shoes/shoe11.jpg'],
//   ];
//   List get shoes => _shoes;
//   int get shoesCount => _shoes.length;
//
//   List randomShoes = [];
//   void getRanndomshoes (){
//     final random = Random();
//     randomShoes.clear();
//     for (int i = 0; i < 4; i++){
//       final randomShoeIndex = random.nextInt(_shoes.length);
//       randomShoes.add(_shoes[randomShoeIndex]);
//       // _shoes.removeAt(randomShoeIndex);
//     }
//     notifyListeners();
//   }
//
//   /// for bags
//   List _bags = [
//     [11, 'Laptop Bag', '\$11.00', 'assets/images/bags/bag1.jpg'],
//     [12, 'Calcio Bag', '\$123.00', 'assets/images/bags/bag2.jpg'],
//     [13, 'Dior Bag', '\$241.00', 'assets/images/bags/bag3.jpg'],
//     [14, 'Apple Bag', '\$323.00', 'assets/images/bags/bag4.jpg'],
//     [15, 'Oriamo Bag', '\$613.00', 'assets/images/bags/bag5.jpg'],
//     [16, 'JonnyBag', '\$2099.00', 'assets/images/bags/bag6.jpg'],
//     [17, 'Pixel Bag', '\$720.00', 'assets/images/bags/bag7.jpg'],
//     [18, 'Samsung Bag', '\$40.00', 'assets/images/bags/bag8.jpg'],
//   ];
//   List get bags => _bags;
//   int get bagsCount => _bags.length;
//
//   List randomBags = [];
//   void generateRandomBags(){
//     randomBags.clear();
//     for(int i = 0; i < 4; i++){
//       int randomBagsIndex = Random().nextInt(_bags.length);
//       randomBags.add(_bags[randomBagsIndex]);
//       // _bags.removeAt(randomBagsIndex);
//     }
//     notifyListeners();
//   }
//
// ///for watches
//   List _watches = [
//     [19, 'Rolex Shiny', '\$903.00', 'assets/images/watches/watch1.jpg'],
//     [20, 'Calcio', '\$327.00', 'assets/images/watches/watch2.jpg'],
//     [21, 'Dior', '\$493.00', 'assets/images/watches/watch3.jpg'],
//     [22, 'Apple Watch', '\$483.00', 'assets/images/watches/watch4.jpg'],
//     [23, 'Oriamo Watch', '\$893.00', 'assets/images/watches/watch5.jpg'],
//     [24, 'JonnyTime', '\$703.00', 'assets/images/watches/watch6.jpg'],
//     [25, 'Pixel Watch', '\$900.00', 'assets/images/watches/watch7.jpg'],
//     [26, 'Samsung Watch', '\$460.00', 'assets/images/watches/watch8.jpg'],
//     [27, 'Sleek watch', '\$342.00', 'assets/images/watches/watch9.jpg'],
//   ];
//
//   List get watches => _watches;
//   int get watchesCount => _watches.length;
//   // List get randomWatch{
//   //   var randW = List.from(_watches)..shuffle();
//   //   var rana = randW.take(3);
//   //   return rana.toList();
//   // }
//
//   List randomWatches = [];
//   void generateRandomWatches(){
//     final random = Random();
//     randomWatches.clear();
//     for(int i = 0; i < 5; i++){
//       int randomWatchesIndex = Random().nextInt(_watches.length);
//       randomWatches.add(_watches[randomWatchesIndex]);
//       // _watches.removeAt(randomWatchesIndex);
//     }
//     notifyListeners();
//   }
// /// for clothes
//   List _clothes = [
//     [28, 'Rolex Bubble', '\$1493.00', 'assets/images/clothes/cloth1.jpg'],
//     [29, 'Dolce & Gabana', '\$2403.00', 'assets/images/clothes/cloth2.jpg'],
//     [30, 'Dior', '\$400.00', 'assets/images/clothes/cloth3.jpg'],
//     [31, 'Apple Sleeve', '\$299.00', 'assets/images/clothes/cloth4.jpg'],
//     [32, 'Supreme Top', '\$699.00', 'assets/images/clothes/cloth5.jpg'],
//     [33, 'JonnyCoaty', '\$1099.00', 'assets/images/clothes/cloth6.jpg'],
//     [34, 'Pixel Cloth', '\$4589.00', 'assets/images/clothes/cloth7.jpg'],
//     [35, 'Native Amkara', '\$219.00', 'assets/images/clothes/cloth8.jpg'],
//   ];
//    List get clothes => _clothes;
//   int get clothesCount => _clothes.length;
//
//   List randomClothes = [];
//   void generateRandomClothes(){
//     final random = Random();
//     randomClothes.clear();
//     for(int i = 0; i < 4; i++){
//       int randomClothesIndex = random.nextInt(_clothes.length);
//       randomClothes.add(_clothes[randomClothesIndex]);
//       // _clothes.removeAt(randomClothesIndex);
//     }
//     notifyListeners();
//   }
//
//   ///for hats
//   List _hats = [
//     [36, 'Rolex Sunny', '\$199.00', 'assets/images/hats/hat1.jpg'],
//     [37, 'Baseball Hat', '\$99.00', 'assets/images/hats/hat2.jpg'],
//     [38, 'SunHat', '\$63.00', 'assets/images/hats/hat3.jpg'],
//     [39, 'Dior Cap', '\$463.00', 'assets/images/hats/hat4.jpg'],
//     [40, 'Apple Cap', '\$213.00', 'assets/images/hats/hat5.jpg'],
//     [41, 'SunSleek', '\$903.00', 'assets/images/hats/hat6.jpg'],
//   ];
//   List get hats => _hats;
//   int get hatsCount => _hats.length;
//
//   List randomHats = [];
//   void generateRandomHats(){
//     final random = Random();
//     randomHats.clear();
//     for(int i = 0; i < 3; i++){
//       int randomHatsIndex = random.nextInt(_hats.length);
//       randomHats.add(_hats[randomHatsIndex]);
//     // _hats.removeAt(randomHatsIndex);
//     }
//     notifyListeners();
//   }
//
// /// for all
//   List get _all {
//     return [..._watches, ..._bags, ..._hats, ..._clothes, ..._shoes];
//   }
//
//   int get allCount => _all.length;
//   List get all => _all;
//
//   List randomAll = [];
//   void generateRandomAll(){
//     final random = Random();
//     randomAll.clear();
//     for(int i = 0; i < 8; i++){
//       int randomAllIndex = random.nextInt(_all.length);
//       randomAll.add(_all[randomAllIndex]);
//       // _all.removeAt(randomAllIndex);
//     }
//     notifyListeners();
//   }
//
//
//   ///for favourites
//  List _favourites = [];
//   List get favourites => _favourites;
//
//   // Set _favourites = {};
//   // Set get favourites => _favourites;
//
//   void addToFavouritesFromRandom(int index, List list){
//     if(!_favourites.contains(list[index])){
//       _favourites.add(list[index]);
//       print('Added to Favourite');
//     }
//     else{ print('Already added to Favourite, cannot add');
//     // _favourites.removeAt(index);
//     // print('Removed from favourites');
//     }
//     notifyListeners();
//   }
//
//   void removeItemsFromFavourites(int index){
//      _favourites.removeAt(index);
//      print('Removed from favourites');
//      notifyListeners();
//   }
//
//   void checkFav(int index, List list){
//     if(_favourites.contains(list[index])){
//       removeItemsFromFavourites(index);
//     }
//     else{addToFavouritesFromRandom(index, list);}
//
//     // if(model.favourites.contains(watch)){
//     //   model.removeItemsFromFavourites(index);
//     // }
//     // else{model.addToFavouritesFromRandom(index, model.randomWatches);}
//   }
//
//   ///for cart
//   List _cartItems = [];
//   List get cartItems => _cartItems;
//
//
// //UnmodifiableListView<ApplianceCard> get applianceList {
// //     return UnmodifiableListView(_applianceList);
// //   }
//
//   //  bool _adaptiveTheme = false;
//   //   bool get getAdaptTheme => _adaptiveTheme;
//   //   set setAdaptTheme (bool vall){
//   //    _adaptiveTheme = vall;
//   //    notifyListeners();
//   //   }
//   // ThemeData get setAppThemeData{
//   //   if(_themebool == false){
//   //     return locator<AppTheme>().lightTheme;
//   //   }
//   //   else{return locator<AppTheme>().darkTheme;}
//   //   notifyListeners();
// }
//






//////////////////////////////////////////////////////////////////////////////////////////////////








class ProductsViewModell extends ChangeNotifier {

  /// for shoes
  List<Product> _shoes = [
  Product(id: 1, name: 'louis Vuition', price: 493.00, image: 'assets/images/shoes/shoe1.jpg'),
    Product(id: 2, name: 'Supreme', price: 593.00, image: 'assets/images/shoes/shoe2.jpg'),
    Product(id: 3, name: 'Dior', price: 693.00, image: 'assets/images/shoes/shoe3.jpg'),
    Product(id: 4, name: 'Dolce sneek', price: 403.00, image: 'assets/images/shoes/shoe4.jpg'),
  Product(id: 5, name: 'Sneakers Loo', price: 93.00, image: 'assets/images/shoes/shoe5.jpg'),
  Product(id: 6, name: 'JonnyFoot', price: 43.00, image: 'assets/images/shoes/shoe6.jpg'),
  Product(id: 7, name: 'Amazing FootWr', price: 23.00, image: 'assets/images/shoes/shoe8.jpg'),
  Product(id: 8, name: 'Burberry', price: 1493.00, image: 'assets/images/shoes/shoe9.jpg'),
  Product(id: 9, name: 'Cover Sleeks', price: 34.00, image: 'assets/images/shoes/shoe10.jpg'),
  Product(id: 10, name: 'Supreme max', price: 49.00, image: 'assets/images/shoes/shoe11.jpg'),
  ];
  List<Product> get shoes => _shoes;
  int get shoesCount => _shoes.length;

  List<Product> randomShoes = [];
  void getRanndomshoes (){
    final random = Random();
    randomShoes.clear();
    for (int i = 0; i < 4; i++){
      final randomShoeIndex = random.nextInt(_shoes.length);
      randomShoes.add(_shoes[randomShoeIndex]);
      // _shoes.removeAt(randomShoeIndex);
    }
    notifyListeners();
  }

  /// for bags
  List<Product> _bags = [
  Product(id: 11, name: 'Laptop Bag', price: 11.00, image: 'assets/images/bags/bag1.jpg'),
  Product(id: 12, name: 'Calcio Bag', price: 123.00, image: 'assets/images/bags/bag2.jpg'),
  Product(id: 13, name: 'Dior Bag', price: 241.00, image: 'assets/images/bags/bag3.jpg'),
  Product(id: 14, name: 'Apple Bag', price: 323.00, image: 'assets/images/bags/bag4.jpg'),
  Product(id: 15, name: 'Oriamo Bag', price: 613.00, image: 'assets/images/bags/bag5.jpg'),
  Product(id: 16, name: 'JonnyBag', price: 2099.00, image: 'assets/images/bags/bag6.jpg'),
  Product(id: 17, name: 'Pixel Bag', price: 720.00, image: 'assets/images/bags/bag7.jpg'),
    Product(id: 18, name: 'Samsung Bag', price: 40.00, image: 'assets/images/bags/bag8.jpg'),
  ];
  List<Product> get bags => _bags;
  int get bagsCount => _bags.length;

  List<Product> randomBags = [];
  void generateRandomBags(){
    randomBags.clear();
    for(int i = 0; i < 4; i++){
      int randomBagsIndex = Random().nextInt(_bags.length);
      randomBags.add(_bags[randomBagsIndex]);
      // _bags.removeAt(randomBagsIndex);
    }
    notifyListeners();
  }

  ///for watches
  List<Product> _watches = [
    Product(id: 19, name: 'Rolex Shiny', price: 903.00, image: 'assets/images/watches/watch1.jpg'),
    Product(id: 20, name: 'Calcio', price: 327.00, image: 'assets/images/watches/watch2.jpg'),
    Product(id: 21, name: 'Dior', price: 493.00, image: 'assets/images/watches/watch3.jpg'),
    Product(id: 22, name: 'Apple Watch', price: 483.00, image: 'assets/images/watches/watch4.jpg'),
    Product(id: 23, name: 'Oriamo Watch', price: 893.00, image: 'assets/images/watches/watch5.jpg'),
    Product(id: 24, name: 'JonnyTime', price: 703.00, image: 'assets/images/watches/watch6.jpg'),
    Product(id: 25, name: 'Pixel Watch', price: 900.00, image: 'assets/images/watches/watch7.jpg'),
    Product(id: 26, name: 'Samsung Watch', price: 460.00, image: 'assets/images/watches/watch8.jpg'),
    Product(id: 27, name: 'Sleek watch', price: 342.00, image: 'assets/images/watches/watch9.jpg'),
  ];

  List<Product> get watches => _watches;
  int get watchesCount => _watches.length;
  // List get randomWatch{
  //   var randW = List.from(_watches)..shuffle();
  //   var rana = randW.take(3);
  //   return rana.toList();
  // }

  List<Product> randomWatches = [];
  void generateRandomWatches(){
    final random = Random();
    randomWatches.clear();
    for(int i = 0; i < 4; i++){
      int randomWatchesIndex = Random().nextInt(_watches.length);
      randomWatches.add(_watches[randomWatchesIndex]);
      // _watches.removeAt(randomWatchesIndex);
    }
    notifyListeners();
  }
  /// for clothes
  List<Product> _clothes = [
  Product(id: 28, name: 'Rolex Bubble', price: 1493.00, image: 'assets/images/clothes/cloth1.jpg'),
  Product(id: 29, name: 'Dolce & Gabana', price: 2403.00, image: 'assets/images/clothes/cloth2.jpg'),
  Product(id: 30, name: 'Dior', price: 400.00, image: 'assets/images/clothes/cloth3.jpg'),
  Product(id: 31, name: 'Apple Sleeve', price: 299.00, image: 'assets/images/clothes/cloth4.jpg'),
  Product(id: 32, name: 'Supreme Top', price: 699.00, image: 'assets/images/clothes/cloth5.jpg'),
  Product(id: 33, name: 'JonnyCoaty', price: 1099.00, image: 'assets/images/clothes/cloth6.jpg'),
  Product(id: 34, name: 'Pixel Cloth', price: 4589.00, image: 'assets/images/clothes/cloth7.jpg'),
    Product(id: 35, name: 'Native Amkara', price: 219.00, image: 'assets/images/clothes/cloth8.jpg'),
  ];
  List<Product> get clothes => _clothes;
  int get clothesCount => _clothes.length;

  List<Product> randomClothes = [];
  void generateRandomClothes(){
    final random = Random();
    randomClothes.clear();
    for(int i = 0; i < 4; i++){
      int randomClothesIndex = random.nextInt(_clothes.length);
      randomClothes.add(_clothes[randomClothesIndex]);
      // _clothes.removeAt(randomClothesIndex);
    }
    notifyListeners();
  }

  ///for hats
  List<Product> _hats = [
  Product(id: 36, name: 'Rolex Sunny',price: 199.00, image: 'assets/images/hats/hat1.jpg'),
  Product(id: 37, name: 'Baseball Hat', price: 99.00, image: 'assets/images/hats/hat2.jpg'),
  Product(id: 38, name: 'SunHat', price: 63.00, image: 'assets/images/hats/hat3.jpg'),
  Product(id: 39, name: 'Dior Cap', price: 463.00, image: 'assets/images/hats/hat4.jpg'),
  Product(id: 40, name: 'Apple Cap', price: 213.00, image: 'assets/images/hats/hat5.jpg'),
    Product(id: 41, name: 'SunSleek', price: 903.00, image: 'assets/images/hats/hat6.jpg'),
  ];
  List<Product> get hats => _hats;
  int get hatsCount => _hats.length;

  List<Product> randomHats = [];
  void generateRandomHats(){
    final random = Random();
    randomHats.clear();
    for(int i = 0; i < 3; i++){
      int randomHatsIndex = random.nextInt(_hats.length);
      randomHats.add(_hats[randomHatsIndex]);
      // _hats.removeAt(randomHatsIndex);
    }
    notifyListeners();
  }

  /// for all
  List<Product> get _all {
    return [..._watches, ..._bags, ..._hats, ..._clothes, ..._shoes];
  }

  int get allCount => _all.length;
  List<Product> get all => _all;

  List<Product> randomAll = [];
  void generateRandomAll(){
    final random = Random();
    randomAll.clear();
    for(int i = 0; i < 8; i++){
      int randomAllIndex = random.nextInt(_all.length);
      randomAll.add(_all[randomAllIndex]);
      // _all.removeAt(randomAllIndex);
    }
    notifyListeners();
  }


  ///for favourites
  List<Product> _favourites = [];
  List<Product> get favourites => _favourites;
  Set<int> favouritesProductIds = {};

  void addToFavouritesFromRandom(Product product){
    if(!favouritesProductIds.contains(product.id)) {
      _favourites.add(product);
      favouritesProductIds.add(product.id as int);
      print('Added to Favourite');
    }
    else{ print('Already added to Favourite, cannot add');}
    notifyListeners();
  }
  void checkFavUp(Product product, [int? index]){
    if(!favouritesProductIds.contains(product.id)){
      _favourites.add(product);
      favouritesProductIds.add(product.id as int);
      print('Added ${product.name} to Favourite from CheckUpFav');
    }
    else{
      favouritesProductIds.remove(product.id);
      _favourites.remove(product);
      // _favourites.removeAt(index);
      print('Removed ${product.name} from favourites from checkUpFav');
    }
    notifyListeners();
  }
  // void checkFavUpp(Product product, int originalIndex){
  //   if(favouritesProductIds.contains(product.id)){
  //     if(originalIndex >= 0 && originalIndex < _favourites.length){
  //       favouritesProductIds.remove(product.id);
  //       _favourites.remove(product);
  //       // _favourites.removeAt(originalIndex);
  //       print('Removed ${product.name} from favourites from checkUpFav');
  //     }
  //     notifyListeners();
  //   }
  //   else{
  //     _favourites.add(product);
  //     favouritesProductIds.add(product.id as int);
  //     print('Added ${product.name} to Favourite from CheckUpFav');
  //   }
  //   notifyListeners();
  // }

  // void removeItemsFromFavouritess(int index){
  //     _favourites.removeAt(index);
  //     print('Removed from favourites');
  //     notifyListeners();
  // }
  // void removeItemsFromFavourites(Product product, int index){
  //  if(favouritesProductIds.contains(product.id)){
  //    _favourites.removeAt(index);
  //    favouritesProductIds.remove(product.id);
  //    print('Removed from favourites');
  //    notifyListeners();
  //  }
  //  else{ print('Unable to remove product');}
  //  notifyListeners();
  // }
  // void removeFav(int originalIndex, Product product){
  //   if(originalIndex >= 0 && originalIndex < _favourites.length){
  //     _favourites.removeAt(originalIndex);
  //     favouritesProductIds.remove(product.id);
  //     print('Removed from favourites---latest remove update');
  //     notifyListeners();
  //   }
  //   else{ print('I didnt rRemove shit from favourites--- latest remove update');}
  //   notifyListeners();
  // }
  void removeItemsFromFavouritesss(Product product){
    if(favouritesProductIds.contains(product.id)){
      _favourites.remove(product);
      // favouritesProductIds.remove(product.id);
      favouritesProductIds.remove(product.id);
      print('Removed from favourites');
      notifyListeners();
    }
    else{ print('Unable to remove product');}
    notifyListeners();
  }


  // void checkFav(int index, List list){
  //   if(_favourites.contains(list[index])){
  //     removeItemsFromFavourites(index);
  //   }
  //   else{addToFavouritesFromRandom(index, list);}
  //
  // if(model.favourites.contains(watch)){
  //   model.removeItemsFromFavourites(index);
  // }
  // else{model.addToFavouritesFromRandom(index, model.randomWatches);}
  // }

  ///for cart
  List<Product> _cartItems = [];
  List<Product> get cartItems => _cartItems;
  Set<int> cartsProductIds = {};

  void addToCart(Product product){
    if(!cartsProductIds.contains(product.id)) {
      _cartItems.add(product);
      cartsProductIds.add(product.id as int);
      print('Added to cart');
    }
    else{ print('Already added to cart, cannot add');}
    notifyListeners();
  }
  void deleteCart(){
    _cartItems.clear();
    cartsProductIds.clear();
    notifyListeners();
    print('Deleted the cart list');
  }

  void removeItemsFromCart(Product product){
    if(cartsProductIds.contains(product.id)){
      _cartItems.remove(product);
      cartsProductIds.remove(product.id);
      product.numberOfProduct = 1;
      print('Removed from cart');
      notifyListeners();
    }
    else{ print('Unable to remove product from cart');}
    notifyListeners();
  }


  void addToNumberOfProduct(Product product){
    product.numberOfProduct++;
    notifyListeners();
  }

  void removeToNumberOfProduct(Product product){
    if(product.numberOfProduct != 1){
      product.numberOfProduct--;
    }
    // product.numberOfProduct--;
    notifyListeners();
  }

  double get CalculateSubtotalCartPrice {
    var subtotalPrice = 0.00;
    for(int i = 0; i < _cartItems.length; i++){
      subtotalPrice += _cartItems[i].price! * _cartItems[i].numberOfProduct;
    }
    return subtotalPrice;
}

 double get TotalPrice{
    dynamic? totalPrice;
    if(_cartItems.length <= 4){
      totalPrice = CalculateSubtotalCartPrice + 19.99;
    }
    else{
      totalPrice = CalculateSubtotalCartPrice + 29.99;
    }
  return totalPrice;
}

}

class Product {
  Product({this.id, this.name, this.image, this.price, this.description, this.numberOfProduct = 1});
// final String? id;
final String? image;
final String? description;
final String? name;
final double? price;
final int? id;
 int numberOfProduct;

}
