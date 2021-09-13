import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/screens/login_page.dart';
import 'package:calebresturant/screens/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

FirebaseAuth _auth = FirebaseAuth.instance;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _auth.currentUser != null ? DeliciousFood() : MainPage(),
    );
  }
}

