import 'package:flutter/material.dart';

import 'package:travel_app/src/onboard/view/onboard_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

          // fontFamily: "Nunito",
          ),
      home: OnboardView(),
    );
  }
}
