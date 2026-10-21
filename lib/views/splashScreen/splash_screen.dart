import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/splashScreen/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  void initState() {
    SplashServices().isLogin();
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Welcome ')));
  }
}
