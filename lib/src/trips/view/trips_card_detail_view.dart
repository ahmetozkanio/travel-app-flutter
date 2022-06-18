import 'package:flutter/material.dart';
import 'package:travel_app/src/trips/model/trips_model.dart';

class TrigsCardDetailView extends StatelessWidget {
  TrigsCardDetailView(this.tripsModel, {Key? key}) : super(key: key);
  TripsModel tripsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image.asset(tripsModel.image),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                tripsModel.title,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                tripsModel.subTitle,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Color.fromARGB(255, 133, 131, 131),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                tripsModel.content,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Color.fromARGB(255, 133, 131, 131),
                ),
              ),
              const SizedBox(
                height: 64.0,
              ),
              const Text(
                "Tags",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 48.0,
                child: ListView.builder(
                    itemCount: tripsModel.tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            child: Row(
                              children: [
                                const Icon(Icons.tag),
                                Text(tripsModel.tags[index].title),
                              ],
                            )),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
