import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managment/views/login/Login_sceeen.dart';
import 'package:state_managment/widgets/round_button.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();

    void sign_up() async{
     await auth.createUserWithEmailAndPassword(
        email: emailcontroller.toString(),
        password: passwordcontroller.toString(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp "),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: 'email',
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: 'password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          RoundButton(title: 'SignUp', onTap: (){
            sign_up();
          }),
          Row(children: [
            Text('Already Have An Acc??'), TextButton(onPressed: (){
               Get.to(() => LoginSceeen());
            }, child: Text('Login'))
          ],)
        ],
      ),
    );
  }
}
