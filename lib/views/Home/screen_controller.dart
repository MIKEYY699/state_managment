import 'package:flutter/material.dart';
import 'package:state_managment/views/Home/home.dart';
import 'package:state_managment/views/favorites/favorites.dart';
import 'package:state_managment/views/share/shares.dart';

class ScreenController extends StatelessWidget {
   new({super.key});

 final screens=[MyHomePage(),FavoritesPage(), ShareScreen(),];
 final screenIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
    );
  }
}