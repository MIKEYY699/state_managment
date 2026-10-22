import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:state_managment/views/Home/home.dart';
import 'package:state_managment/views/HomeView/homeView.dart';
import 'package:state_managment/views/firebase_screens/firebase_controller.dart';
import 'package:state_managment/views/firebase_screens/firebase_signupScreen.dart';
import 'package:state_managment/widgets/round_button.dart';

class FirebaseLoginScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirebaseController());
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading.value,
        child: Scaffold(
          appBar: AppBar(title: Text('Login'), centerTitle: true),
          body: Form(
            key: controller.formKey,
            child: Center(
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
                      title: 'Login',
                      onTap: () {
                        controller.login(context);
                      },
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text('Dont have an account??'),
                        TextButton(
                          onPressed: () {
                            Get.to(() => FirebaseSignupscreen());
                          },
                          child: Text("SignUp"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
