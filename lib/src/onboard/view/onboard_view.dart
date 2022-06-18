import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/src/onboard/controller/onboard_view_controller.dart';

import '../model/onboard_model.dart';

class OnboardView extends StatelessWidget {
  OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardViewController onboardViewController =
        Get.put(OnboardViewController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: PageView.builder(
                    controller: onboardViewController.pageController,
                    onPageChanged: (int page) {
                      onboardViewController.pageIndacatorIndex.value = page;
                      print(page);
                    },
                    itemCount: onboardPages.length,
                    itemBuilder: (context, position) {
                      return onboardPages[position];
                    }),
              ),
              DotsIndicator(
                dotsCount: onboardPages.length,
                position:
                    onboardViewController.pageIndacatorIndex.value.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(28.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () =>
                        onboardViewController.skipIndicatorButton(),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        onboardViewController.nextIndicatorButton(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

OnboardViewController _onboardViewController = Get.find();
List<Widget> onboardPages = [
  for (var onboarList in _onboardViewController.onboardModelList)
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          onboarList.image != '' ? Image.asset(onboarList.image) : Text(""),
          Text(
            onboarList.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 32.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.0,
              right: 32.0,
            ),
            child: Text(
              onboarList.subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 119, 118, 118),
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    ),
];
