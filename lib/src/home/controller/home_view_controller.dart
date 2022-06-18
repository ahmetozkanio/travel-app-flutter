import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  RxInt selectedIndex = 0.obs;

  PageController pageController = PageController();

  onItemTapped(int selectedIndex) {
    // if (pageController.hasClients) {
    //   pageController.animateToPage(
    //     selectedIndex,
    //     duration: const Duration(milliseconds: 400),
    //     curve: Curves.easeInOut,
    //   );
    // }
    pageController.jumpToPage(selectedIndex);
  }

  onPageChanged(index) {
    selectedIndex.value = index;
  }
}
