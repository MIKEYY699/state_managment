import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/ui/auth/login_screen.dart';
import 'package:state_managment/views/Home/home.dart';

class SplashServices {

void isLogin(BuildContext context){

  final auth= FirebaseAuth.instance;
  final user= auth.currentUser;

  if(user!=null){
    Timer(Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())));

  }
  else{

  Timer(Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen())));
}
}

}