import 'package:bikesterr/presentation/screens/help.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:bikesterr/presentation/screens/home_screens/all_stations.dart';
import 'package:bikesterr/presentation/screens/home_screens/map_test.dart';
import 'package:bikesterr/presentation/screens/home_screens/nearest_stations.dart';
import 'package:bikesterr/presentation/screens/login.dart';
import 'package:bikesterr/presentation/screens/home_screens/profile.dart';
import 'package:bikesterr/presentation/screens/register.dart';
import 'package:bikesterr/presentation/screens/review.dart';
import 'package:bikesterr/presentation/screens/wallet.dart';
//import 'package:bikesterr/presentation/screens/welcome.dart';
import 'package:bikesterr/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: WelcomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
//AIzaSyCFuI0obspjmVCbr4_9c0dYrMfDJ27LtV4