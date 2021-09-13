



import 'package:calebresturant/screens/login_page.dart';
import 'package:calebresturant/screens/mainAppPages/ApphomePage.dart';
import 'package:calebresturant/screens/mainAppPages/Orders.dart';
import 'package:calebresturant/screens/mainAppPages/favoritePage.dart';
import 'package:calebresturant/screens/mainAppPages/historyPage.dart';
import 'package:calebresturant/screens/mainAppPages/profileChanges.dart';
import 'package:calebresturant/screens/mainAppPages/profilePage.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DeliciousFood extends StatefulWidget {
  String? rasm;
  DeliciousFood({this.rasm});

  @override
  _DeliciousFoodState createState() => _DeliciousFoodState();
}

class _DeliciousFoodState extends State<DeliciousFood>
    with TickerProviderStateMixin {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 0;
  List<Widget>? pageList;
  AppHomePage? appHomePage;
  FavoritePage? favoritePage;
  ProfilePage? profilePage;
  HistoryPage? historyPage;
  late FancyDrawerController _controller;

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appHomePage = AppHomePage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    historyPage = HistoryPage();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
    pageList = [appHomePage!, favoritePage!, profilePage!, historyPage!];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: Color(0xFFFFFA4A0C),
        drawerItems: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileChanges()));
            },
            child: ListTile(
              leading: Icon(
                Icons.person_pin_circle_outlined,
                color: Colors.white,
                size: 38.0,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Orders()));
            },
            child: ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 38.0,
              ),
              title: Text(
                "Orders",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.white,
              size: 38.0,
            ),
            title: Text(
              "Offers and Promo",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.list_alt_outlined,
              color: Colors.white,
              size: 38.0,
            ),
            title: Text(
              "Privacy policy",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: Colors.white,
              size: 38.0,
            ),
            title: Text(
              "Security",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          GestureDetector(
            onTap: () async{
              await _auth.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
                size: 38.0,
              ),
              title: Text(
                "Sign Out",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
            ),
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: bottomBar1(),
          backgroundColor: Color(0xFFEFEEEE),
          appBar: appBarlar1(context)[_page],
          body: pageList![_page],
        ),
      ),
    );
  }

  bottomBar1() {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 60.0,
      items: <Widget>[
        Icon(Icons.home_outlined, size: 30, color: Colors.white),
        Icon(Icons.favorite_outline, size: 30, color: Colors.white),
        Icon(
          Icons.person_outline,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.history,
          size: 30,
          color: Colors.white,
        ),
      ],
      color: Colors.black54,
      buttonBackgroundColor: Color(0xFFFFFA4A0C),
      backgroundColor: Color(0xFFEFEEEE),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
      letIndexChange: (index) => true,
    );
  }

  appBarlar1(context) {
    var appBarlar = [
      AppBar(
        backgroundColor: Color(0xFFEFEEEE),
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              _controller.toggle();
            },
            child: Image.asset("assets/images/menu.png")),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Orders(rasm: widget.rasm)));
            },
            child: Image.asset(
              "assets/images/shop.png",
            ),
          ),
        ],
      ),
      AppBar(
        backgroundColor: Color(0xFFEFEEEE),
        elevation: 0.0,
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.black45, fontSize: 19.0),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Orders(rasm: widget.rasm)));
              },
              child: Image.asset(
                "assets/images/shop.png",
              )),
        ],
        leading: Image.asset(
          "assets/images/menu.png",
          color: Color(0xFFEFEEEE),
        ),
      ),
      AppBar(
          backgroundColor: Color(0xFFEFEEEE),
          elevation: 0.0,
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Orders(rasm: widget.rasm)));
                },
                child: Image.asset(
                  "assets/images/shop.png",
                )),
          ],
          leading: IconButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => DeliciousFood()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30.0,
              color: Colors.black,
            ),
          )),
      AppBar(
        backgroundColor: Color(0xFFEFEEEE),
        elevation: 0.0,
        title: Text(
          "History",
          style: TextStyle(color: Colors.black45, fontSize: 19.0),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Orders(rasm: widget.rasm)));
              },
              child: Image.asset(
                "assets/images/shop.png",
              )),
        ],
        leading:
            Image.asset("assets/images/menu.png", color: Color(0xFFEFEEEE)),
      ),
    ];
    return appBarlar;
  }
}
