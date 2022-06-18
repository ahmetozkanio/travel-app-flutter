import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../actions/bottom_nav/bottom_nav_view.dart';
import '../controller/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeViewController homeViewController = Get.put(HomeViewController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: bodyPageView(homeViewController, context),
      bottomNavigationBar: Obx(
        () => bottomNavBar(homeViewController),
      ),
    );
  }
}

PageView bodyPageView(
    HomeViewController homeViewController, BuildContext context) {
  return PageView(
      controller: homeViewController.pageController,
      onPageChanged: homeViewController.onPageChanged,
      children: bottomNavPages(context),
      physics: NeverScrollableScrollPhysics());
}
