import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale
  List<Shoe> shopShoes = [
    Shoe(name: "Adoiporikon", price: "230", imagePath: "lib/images/adoiporikon.jpeg", description: "Smart shoe"),
    Shoe(name: "Shutter stock", price: "235", imagePath: "lib/images/shutterstock.jpeg", description: "awesom shoe"),
    Shoe(name: "Vecteezy", price: "150", imagePath: "lib/images/vecteezy.jpeg", description: "Teezy shoe"),
    Shoe(name: "Athletic", price: "175", imagePath: "lib/images/athletic.jpeg", description: "Smart shoe"),
  ];
// list of items in user cart
  List<Shoe> userCart = [];
// get list of shoes for sale
  List<Shoe> getShoes() {
    return shopShoes;
  }
// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
//  remove from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}