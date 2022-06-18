import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel_app/src/onboard/view/onboard_view.dart';

import '../../theme/text_theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: nunitoTextTheme,
      ),
      home: const OnboardView(),
    );
  }
}
