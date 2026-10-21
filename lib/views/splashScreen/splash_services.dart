import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:state_managment/views/HomeView/homeView.dart';
import 'package:state_managment/views/firebase_screens/firebase_loginScreen.dart';
import 'package:state_managment/views/login/Login_sceeen.dart';

class SplashServices extends GetxController {
  final auth = FirebaseAuth.instance;
  @override
  void onReady() {
    super.onReady();
    isLogin();
  }

  void isLogin() {
    final user = auth.currentUser;
    if (user != null) {
      Timer(Duration(seconds: 3), () {
        Get.offAll(() => FirebaseLoginScreen());
      });
    } else {
      Timer(Duration(seconds: 3), () {
        Get.offAll(() => Homeview());
      });
    }
  }
}
