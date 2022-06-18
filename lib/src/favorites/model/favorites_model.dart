import 'package:flutter/material.dart';

class FavoritesModel {
  String city;
  String content;
  String price;
  String image;
  var bgColor;
  FavoritesModel(this.city, this.content, this.price, this.image, this.bgColor);
}

List<FavoritesModel> favoritesCardList = [
  FavoritesModel("Gaziantep", "Discover new places and find new adventures. ",
      "\$500", "assets/campfire.png", Color.fromARGB(255, 225, 203, 121)),
  FavoritesModel("Dublin", "Discover new places and find new adventures. ",
      "\$700", "assets/campfire.png", Color.fromARGB(255, 145, 214, 243)),
  FavoritesModel("Madrid", "Discover new places and find new adventures. ",
      "\$500", "assets/campfire.png", Color.fromARGB(255, 209, 125, 234)),
  FavoritesModel("Lima", "Discover new places and find new adventures. ",
      "\$500", "assets/campfire.png", Color.fromARGB(255, 121, 169, 225)),
  FavoritesModel("L.A.", "Discover new places and find new adventures. ",
      "\$500", "assets/campfire.png", Color.fromARGB(255, 119, 240, 226)),
];
