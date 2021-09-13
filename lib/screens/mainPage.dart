import 'dart:ui';
import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/screens/login_page.dart';
import 'package:calebresturant/services/authontication.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

AuthService _authService = AuthService();

FirebaseAuth _auth = FirebaseAuth.instance;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final connected = connectivity != ConnectivityResult.none;
        return connected ? _internetConnectio() : _internetProblem();
      },
      child: Container(),
    );
  }

  _internetConnectio() {
    return Scaffold(
      backgroundColor: Color(0xFFFA4A0C),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/asosiy.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 650.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 25.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Color(0xFFFFFA4A0C),
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _internetProblem() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100.0,
          ),
          Container(
            child: Icon(
              Icons.wifi_off_sharp,
              size: 200.0,
              color: Colors.black12,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              "Your internet connection is currently\nplease check again or try again",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 200.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFFA4A0C),
                padding: EdgeInsets.symmetric(
                  horizontal: 130,
                  vertical: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Try again",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _ruchnoy() {
    return Container(
      height: 896.0,
      width: 414.0,
      color: Color(0xFFFA4A0C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 73.0,
              width: 73.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                "CALEB G",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                "Restaurant",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: 290.0,
            width: 416,
            //color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  left: 180.0,
                  top: 100.0,
                  child: Container(
                    transform: Matrix4.rotationY(100),
                    transformAlignment: Alignment.centerRight,
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/images/face4.png",
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    child: Image.asset(
                      "assets/images/face3.png",
                      fit: BoxFit.cover,
                      // width: 350,
                      // height: 350,
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY: 22, sigmaX: 15),
                    child: Container(
                      height: 100,
                      width: 210,
                      color: Color(0xFFFFFA4A0C),
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  left: 300,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY: 12, sigmaX: 20),
                    child: Container(
                      height: 90,
                      width: 50,
                      color: Color(0xFFFFFA4A0C),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                if (_auth.currentUser != null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeliciousFood()));
                }
              },
              child: Text(
                "Get started",
                style: TextStyle(
                  color: Color(0xFFFFFA4A0C),
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
