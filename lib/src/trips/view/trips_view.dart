import 'package:flutter/material.dart';
import 'package:get/Get.dart';

import '../model/trips_model.dart';
import 'trips_card_detail_view.dart';

class TripsView extends StatelessWidget {
  const TripsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 295,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.bottom,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 109, 109, 109),
                        ),
                        hintText: "search",
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/avatar.png",
                    width: 32.0,
                    height: 32.0,
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.0,
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Uncomming Meetups",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.0,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 227, 255),
                        borderRadius: BorderRadius.circular(8.0)),
                    height: 64.0,
                    width: 73.75,
                    child: Icon(Icons.camera_alt),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 221, 255),
                        borderRadius: BorderRadius.circular(8.0)),
                    height: 64.0,
                    width: 73.75,
                    child: Icon(Icons.favorite),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 219, 245),
                        borderRadius: BorderRadius.circular(8.0)),
                    height: 64.0,
                    width: 73.75,
                    child: Icon(Icons.landscape),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 242, 174),
                        borderRadius: BorderRadius.circular(8.0)),
                    height: 64.0,
                    width: 73.75,
                    child: Icon(Icons.face),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.0,
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 385.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.5,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return cityCard(context, index);
                },
                childCount: trigsCardList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget cityCard(context, index) {
  return Expanded(
    child: GestureDetector(
      onTap: () => Get.to(() => TrigsCardDetailView(trigsCardList[index])),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: trigsCardList[index].bgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          image: DecorationImage(
            image: AssetImage(
              trigsCardList[index].image,
            ),
            fit: BoxFit.contain,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.width / 5,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      trigsCardList[index].subTitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 131, 129, 129),
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      trigsCardList[index].title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(11),
                bottomRight: Radius.circular(11),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
              color: Color.fromRGBO(255, 251, 251, 1),
            ),
          ),
        ),
      ),
    ),
  );
}
