import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/home.dart';
import 'package:state_managment/views/firebase_screens/firebase_loginScreen.dart';

class FirebaseController extends GetxController {
  final key = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isLoading = false.obs;

  final auth = FirebaseAuth.instance;

  void login(BuildContext context) async {
    try {
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text,
      );
      Get.snackbar(
        "Success",
        "Login Successful",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAll(() => MyHomePage());
    } catch (error) {
      Get.snackbar(
        "Error",
        error.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      log(error.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signup() async {
    try {
      isLoading.value = true;
      await auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text,
      );
      Get.snackbar(
        "Success",
        "Account created successfully",
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
      );
      Get.offAll(() => FirebaseLoginScreen());
    } catch (error) {
      Get.snackbar(
        "Error",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      log(error.toString());
    } finally {
      isLoading.value = false;
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
