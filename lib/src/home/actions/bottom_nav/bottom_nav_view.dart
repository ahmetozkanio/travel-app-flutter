import 'package:flutter/material.dart';
import 'package:travel_app/src/home/controller/home_view_controller.dart';
import 'package:travel_app/src/trips/view/trips_view.dart';

bottomNavPages(context) {
  return [TripsView(), TripsView(), TripsView()];
}

BottomNavigationBar bottomNavBar(HomeViewController homeViewController) {
  return BottomNavigationBar(
      onTap: homeViewController.onItemTapped,
      currentIndex: homeViewController.selectedIndex.value,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(label: "Trips", icon: Icon(Icons.location_on)),
        BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
      ]);
}