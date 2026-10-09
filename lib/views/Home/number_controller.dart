import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_managment/views/Home/model.dart';
import 'package:state_managment/views/HomeView/homeView.dart';
import 'package:state_managment/views/favorites/favorites.dart';
import 'package:state_managment/views/share/shares.dart';

import 'model.dart';

class NumberController extends GetxController {
  RxInt n = 3.obs;

  void increase() {
    n++;
  }

  void decrease() {
    n--;
  }

  RxInt currentIndex = 0.obs;
  RxList screens = <Widget?>[Homeview(), FavoritesPage(), ShareScreen()].obs;

  void changeScreen(int value) {
    currentIndex.value = value;
  }

  RxList<User> order = [
    User(name: 'Ismail', number: 030303030303, id: 101),
    User(name: 'Abdullah', number: 030303030303, id: 010),
    User(name: 'Hzaifa', number: 030303030303, id: 111),
    User(name: 'Sufiyan', number: 030303030303, id: 111),
  ].obs;
}

///////////////////////////////////////////////////////
class UiController extends GetxController {
  final showroom = ShowRoom(
    name: 'Ismails Showroom ',
    image: 'assets/images/image.png',
    ratting: 3.4,
    distance: '4 Km Away',
  );

  RxList<Services> services = [
    Services(
      name: 'Protection Film',
      time: '3hr',
      discription: 'Clear film protection fro high impact areas',
      price: '120 KWD',
    ),
    Services(
      name: 'Paint Film',
      time: '3hr',
      discription: 'Clear film protection fro high impact areas',
      price: '120 KWD',
    ),
    Services(
      name: 'Paint',
      time: '3hr',
      discription: 'Clear film protection fro high impact areas',
      price: '120 KWD',
    ),
    Services(
      name: 'Paint Protection Film',
      time: '3hr',
      discription: 'Clear film protection fro high impact areas',
      price: '120 KWD',
    ),
  ].obs;

  RxList<About> about = [
    About(
      discription: 'Premium Auto Care has been serving the community for over 5 years with professional car protection and detailing services. We use only the highest quality products and certified techniques.',
      location: '123 Main Street, Downtown',
      time: '12PM Monday',
      number: '030303030303',
    ),
    About(
      discription: 'Premium Auto Care has been serving the community for over 5 years with professional car protection and detailing services. We use only the highest quality products and certified techniques.',
      location: '123 Main Street, Downtown',
      time: '12PM Monday',
      number: '030303030303',
    ),
    About(
      discription: 'Premium Auto Care has been serving the community for over 5 years with professional car protection and detailing services. We use only the highest quality products and certified techniques.',
      location: '123 Main Street, Downtown',
      time: '12PM Monday',
      number: '030303030303',
    ),
  ].obs;

  List<Reviews> review = [
    Reviews(
      image: 'assets/images/image.png',
      name: 'Ismail',
      ratting: 7.7,
      time: '',
      discription: 'Excellent ceramic coating service! The team was professional and the results exceeded my expectations.',
    ),
  ];
}
