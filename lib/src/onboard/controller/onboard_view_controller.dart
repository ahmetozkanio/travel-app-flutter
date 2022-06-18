import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/src/onboard/model/onboard_model.dart';

class OnboardViewController extends GetxController {
  PageController pageController = PageController();

  var pageIndacatorIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  skipIndicatorButton() {
    if (pageIndacatorIndex.value > 0) {
      pageIndacatorIndex.value--;
      if (pageController.hasClients) {
        pageController.animateToPage(
          pageIndacatorIndex.value,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  nextIndicatorButton() {
    if (pageIndacatorIndex.value >= 0 &&
        onboardModelList.length - 1 > pageIndacatorIndex.value) {
      pageIndacatorIndex.value++;
      if (pageController.hasClients) {
        pageController.animateToPage(
          pageIndacatorIndex.value,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  List<OnboardModel> onboardModelList = [
    OnboardModel(
        "Find a Roomie!",
        "We've helped millions across the nation find their perfect match... and you're next!",
        "assets/avatar.png"),
    OnboardModel(
        "Your Roommate Finder",
        "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
        "assets/moto.png"),
    OnboardModel(
        "Find Your Match!",
        "We've helped millions across the nation find their perfect match... and you're next!",
        "assets/road_trip.png")
  ];
}
