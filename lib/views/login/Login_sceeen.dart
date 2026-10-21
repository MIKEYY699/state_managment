import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/login/login_controller.dart';
import 'package:state_managment/views/sign_up/sign_up_screen.dart';
import 'package:state_managment/widgets/round_button.dart';

class LoginSceeen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller.emailcontroller,
            decoration: InputDecoration(
              hintText: 'email',
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller.passwordcontroller,
            decoration: InputDecoration(
              hintText: 'password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          RoundButton(
            title: 'Login',
            onTap: () {
              controller.login();
            },
          ),
          Row(
            children: [
              Text("Dont have an acc?? "),
              TextButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text('SignUp'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
