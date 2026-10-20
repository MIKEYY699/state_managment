import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/ui/auth/login_screen.dart';
import 'package:state_managment/utils/utils.dart';
import 'package:state_managment/widgets/round_button.dart';

class SignUpScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final paswordcontroller = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    paswordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp "),
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
                title: 'SignUp',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _auth
                        .createUserWithEmailAndPassword(
                          email: emailcontroller.text.trim(),
                          password: paswordcontroller.toString(),
                        )
                        .then((value) {})
                        .onError((error, stackTrace) {
                          Utils().toastMsg(error.toString());
                        });
                  }
                },
              ),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text('Already have an acc??'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('login'),
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
