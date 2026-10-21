import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/splashScreen/splash_services.dart';

class SplashScreen extends StatelessWidget {
  final UiController controller1 = Get.put(UiController());



  @override
  Widget build(BuildContext context) {
    final controller1 = Get.find<UiController>();
    return Scaffold(
      body: Center(child: Obx(() => Text(controller1.text.value))),
    );
  }
}
