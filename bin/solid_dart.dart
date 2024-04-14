import 'single_responsability_principle/shop_cart.dart';

void main(List<String> args) {
  final myShopCart = ShopCart<String>();
  print(myShopCart.items); // empty

  myShopCart
    ..add((item: "Bike", price: 750.10))
    ..add((item: "Fridge", price: 1950.15))
    ..add((item: "Mat", price: 350.20));

  print(myShopCart.items);
  print(myShopCart.totalPrice);
  print(myShopCart.status);

  myShopCart.confirmOrder();

  print(myShopCart.status);
}
