import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/home.dart';
import 'package:state_managment/views/firebase_screens/firebase_loginScreen.dart';
import 'package:state_managment/views/firebase_screens/firebase_signupScreen.dart';

class FirebaseController extends GetxController {
  final key = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  final auth = FirebaseAuth.instance;

  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.offAll(() => MyHomePage());
    } catch (error) {
      log(error.toString());
    }
  }

  void signup() async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.offAll(() => FirebaseSignupscreen());
    } catch (error) {
      log(error.toString());
    }
  }

  void logout() {
    try {
      auth.signOut();
      Get.offAll(() => FirebaseLoginScreen());
    } catch (error) {
      log(error.toString());
    }
  }
}
