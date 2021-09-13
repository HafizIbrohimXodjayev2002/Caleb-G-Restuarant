import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/services/authontication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  TabController? tabController;
  bool visible = true;
  var iconVisible = Icons.visibility_off_outlined;
  var _formKey = GlobalKey<FormState>();
  bool prosta = true;
  FirebaseAuth _authUser = FirebaseAuth.instance;

  AuthService _authService = AuthService();

  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  TextEditingController emailControl1 = TextEditingController();
  TextEditingController passwordControl1 = TextEditingController();

  String? email;
  String? password;

  bool visible2 = true;
  var iconVisible2 = Icons.visibility_off_outlined;
  var _formKey2 = GlobalKey<FormState>();
  bool prosta2 = true;

  String? email2;
  String? password2;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 0.0,
        toolbarHeight: 300.0,
        title: Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Image.asset("assets/images/logo4.png"),
        ),
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.red,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
          tabs: [
            Text(
              "      Login        ",
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            Text(
              "     Sign-up      ",
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          _loginTab(),
          _signUpTab(),
        ],
      ),
    );
  }

  _loginTab() {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                validator: (e) {
                  
                  return null;
                },
                controller: emailControl,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined,
                      color: Colors.teal.shade900, size: 23),
                  hintText: "Enter address....",
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                validator: (e) {
                  
                  return null;
                },
                controller: passwordControl,
                obscureText: visible,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        if (visible == true) {
                          visible = false;
                          iconVisible = Icons.visibility_outlined;
                        } else {
                          visible = true;

                          iconVisible = Icons.visibility_off_outlined;
                        }
                      });
                    },
                    child: Icon(iconVisible,
                        color: Colors.teal.shade900, size: 23),
                  ),
                  hintText: "Enter password....",
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "    Forgot passcode?",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
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
                onPressed: _emailBilan,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _signUpTab() {
    return Form(
      key: _formKey2,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                validator : (e){
                  return null;
                },
                controller: emailControl1,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined,
                      color: Colors.teal.shade900, size: 23),
                  hintText: "Enter address....",
                  hintStyle: TextStyle(color: Colors.blue.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                 validator : (e){
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Phone",
                  prefixIcon: Icon(Icons.person_outline,
                      color: Colors.teal.shade900, size: 23),
                  hintText: "Enter phone....",
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                 validator : (e){
                  return null;
                },
                controller: passwordControl1,
                obscureText: visible2,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        if (visible2 == true) {
                          visible2 = false;
                          iconVisible2 = Icons.visibility_outlined;
                        } else {
                          visible2 = true;

                          iconVisible2 = Icons.visibility_off_outlined;
                        }
                      });
                    },
                    child: Icon(iconVisible,
                        color: Colors.teal.shade900, size: 23),
                  ),
                  hintText: "Enter password....",
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        BorderSide(color: Colors.teal.shade900, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "    Forgot passcode?",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
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
                onPressed: _emailSignUp,
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _emailBilan() async {
    try {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        FocusScope.of(context).unfocus();
        User _signInQilganUser = (await _authUser.signInWithEmailAndPassword(
                email: emailControl.text, password: passwordControl.text))
            .user!;

        print("User Tizimga Kirdi: ${_signInQilganUser.email}");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DeliciousFood()));
      }
    } catch (e) {
      print("XATO: " + e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          content: Text("Email yoki Password Xato !"),
        ),
      );
    }
  }
  _emailSignUp() async {
    if (_formKey2.currentState!.validate()) {
      _formKey2.currentState!.save();
      try {
        UserCredential _credential = await _authUser
            .createUserWithEmailAndPassword(email: emailControl1.text, password: passwordControl1.text);

        User _newUser = _credential.user!;
        await _newUser.sendEmailVerification();
        if (_authUser.currentUser != null) {
          await _authUser.signOut();
          await Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => DeliciousFood()));
        }
        print(_newUser.email);
      } catch (e) {
         ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          content: Text("Iltimos boron bir narsa kiriting!"),
        ),
      );
      }
    }
  }
}

