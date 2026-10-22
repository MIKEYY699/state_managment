import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:state_managment/Initial%20Bindings/initial_bindings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:state_managment/views/splashScreen/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  log('Firebase connected successfully!');
  try {
    final notificationSettings = await FirebaseMessaging.instance
        .requestPermission(alert: true, badge: true, sound: true);
    log('Notification permission: ${notificationSettings.authorizationStatus}');

    final fcmToken = await FirebaseMessaging.instance.getToken();
    log('FCM token: $fcmToken');
  } catch (error, stackTrace) {
    log('Failed to retrieve FCM token', error: error, stackTrace: stackTrace);
  }

  //////////////////////////
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBindings(),
          home: SplashScreen(),
        );
      },
    );
  }
}
