import 'package:flutter/material.dart';
import 'package:travel_app/src/favorites/model/favorites_model.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(shrinkWrap: true, slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Favorites",
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/avatar.png",
                  width: 32.0,
                  height: 32.0,
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 295,
              height: 40,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 109, 109, 109),
                  ),
                  hintText: "search",
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16.0,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "Around The World",
              style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 385.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return favoritesCityCard(context, index);
              },
              childCount: favoritesCardList.length,
            ),
          )
        ]),
      )),
    );
  }
}

Widget favoritesCityCard(context, index) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            color: favoritesCardList[index].bgColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            image: DecorationImage(
              image: AssetImage(
                favoritesCardList[index].image,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    favoritesCardList[index].city,
                    style: const TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    favoritesCardList[index].price,
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: Text(
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  softWrap: true,
                  favoritesCardList[index].content,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
