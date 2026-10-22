import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/firebase_screens/firebase_controller.dart';

class MyHomePage extends StatelessWidget {
  new({super.key});
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    NumberController controller = Get.put(NumberController());
    final controller2 = Get.put(FirebaseController());


    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller2.logout();
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),

      body: Obx(() => controller.screens[controller.currentIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.changeScreen,
        currentIndex: controller.currentIndex.value,
        selectedItemColor: Colors.blue,

        unselectedItemColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
        ],
      ),
    );
  }
}
