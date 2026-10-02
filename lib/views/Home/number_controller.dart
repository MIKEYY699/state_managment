import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/model.dart';
import 'package:state_managment/views/HomeView/homeView.dart';
import 'package:state_managment/views/favorites/favorites.dart';
import 'package:state_managment/views/share/shares.dart';

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
