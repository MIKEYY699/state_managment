import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/ui/auth/sign_up_screen.dart';
import 'package:state_managment/utils/utils.dart';
import 'package:state_managment/views/Home/home.dart';
import 'package:state_managment/views/favorites/favorites.dart';
import 'package:state_managment/widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final paswordcontroller = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    paswordcontroller.dispose();
  }

  void login() {
    _auth
        .signInWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: paswordcontroller.text.toString(),
        )
        .then((value) {
          Utils().toastMsg(value.user!.email.toString());
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoritesPage()),
          );
          
        })
        .onError((error, stackTrace) {
          Utils().toastMsg(error.toString());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your email';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: paswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.lock_clock_outlined),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              RoundButton(
                title: 'Login',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    login();
                  }
                },
              ),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text('Dont have an acc??'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text('Sign up'),
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
