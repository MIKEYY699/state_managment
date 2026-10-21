import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/splashScreen/splash_services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashServices());
    return Scaffold(body: Center(child: Text('Welcome ')));
  }
}
