import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../presentation/screens/login.dart';

class AuthController extends RxController {
  // data , fields
  // final FirebaseAuthentication _firebaseAuthentication =
  //     FirebaseAuthentication();
  final auth = FirebaseAuth.instance;
  // functirons
  login(String email, String password) async {
    var userCred =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    if (userCred != null) {
      Get.showSnackbar(const GetSnackBar(
        title: 'successful',
        messageText: Text('logging in'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ));
      Get.to(() => HomePage());
    } else {
      Get.showSnackbar(const GetSnackBar(
        title: 'error',
        messageText: Text('email or password are invalid'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ));
    }
  }

  signUp(String email, String password) async {
    var userCred = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    if (userCred != null) {
      Get.showSnackbar(const GetSnackBar(
        title: 'successful',
        messageText: Text('new user created'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ));
      Get.to(() => Login());
    } else {
      Get.showSnackbar(const GetSnackBar(
        title: 'error',
        messageText: Text('email or password are invalid'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ));
    }
  }
}
