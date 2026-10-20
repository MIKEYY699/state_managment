import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/firebase_screens/firebase_controller.dart';

class FirebaseLoginScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirebaseController());
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            TextFormField(controller: controller.email),
            TextFormField(controller: controller.password),
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
