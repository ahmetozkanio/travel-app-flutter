import 'package:flutter/material.dart';
import 'package:travel_app/src/trips/model/trips_tags_model.dart';

class TripsModel {
  String title;
  String subTitle;
  String content;
  String image;
  var bgColor;
  List<TagsModel> tags;

  TripsModel(this.title, this.subTitle, this.content, this.image, this.tags,
      this.bgColor);
}

List<TripsModel> trigsCardList = [
  TripsModel(
      "Camping in Gaziantep",
      "Gaziantep, Turkey - 3 weeks",
      "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
      "assets/camping_chill.png",
      [
        TagsModel("Gaziantep"),
        TagsModel("Turkey"),
        TagsModel("Camping"),
        TagsModel("Huzur")
      ],
      Color.fromARGB(255, 67, 198, 221)),
  TripsModel(
      "City of Istanbul",
      "Istanbul, Turkey - 3 weeks",
      "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
      "assets/campfire.png",
      [
        TagsModel("Istanbul"),
        TagsModel("Turkey"),
        TagsModel("Camping"),
        TagsModel("Huzur")
      ],
      Color.fromARGB(255, 27, 239, 165)),
  TripsModel(
      "Camping in Diyarbakir",
      "Diyarbakir, Turkey - 3 weeks",
      "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
      "assets/biking.png",
      [
        TagsModel("Diyarbakir"),
        TagsModel("Turkey"),
        TagsModel("Camping"),
        TagsModel("Huzur")
      ],
      Color.fromARGB(255, 244, 244, 95))
];
