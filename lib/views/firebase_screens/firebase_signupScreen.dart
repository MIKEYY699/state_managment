import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/HomeView/homeView.dart';
import 'package:state_managment/views/firebase_screens/firebase_controller.dart';
import 'package:state_managment/views/firebase_screens/firebase_loginScreen.dart';
import 'package:state_managment/widgets/round_button.dart';

class FirebaseSignupscreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirebaseController());
    return Scaffold(
      appBar: AppBar(title: Text('SignUp'), centerTitle: true),
      body: Form(
        key: controller.key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              TextFormField(
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              TextFormField(
                controller: controller.password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 10),

              RoundButton(
                title: 'SignUp',
                onTap: () {
                  controller.signup();
                },
              ),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text('Already have an acc??'),
                  TextButton(
                    onPressed: () {
                      Get.to(() => FirebaseLoginScreen());
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
