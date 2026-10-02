import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
}
