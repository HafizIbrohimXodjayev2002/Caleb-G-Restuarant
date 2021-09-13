

import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:flutter/material.dart';

class ProfileChanges extends StatefulWidget {
  const ProfileChanges({Key? key}) : super(key: key);

  @override
  _ProfileChangesState createState() => _ProfileChangesState();
}

class _ProfileChangesState extends State<ProfileChanges> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My profile",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            size: 25.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Information",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage("assets/images/rasm.webp"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thelma Sara-bear",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "thelme_sara_bear@.gmail.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 13.0,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Trasco hotel behind navrongo\ncampus",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Payment method",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          activeColor: Color(0xFFF47B0A),
                          value: 1,
                          groupValue: index,
                          onChanged: (int? value) {
                            setState(() {
                              index = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFF47B0A),
                            image: DecorationImage(
                              image: AssetImage("assets/images/card.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Card",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Color(0xFFF47B0A),
                          value: 2,
                          groupValue: index,
                          onChanged: (int? value) {
                            setState(() {
                              index = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFEB4796),
                            image: DecorationImage(
                              image: AssetImage("assets/images/mobile.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Mobile Money (MTN, VODA)",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Color(0xFFF47B0A),
                          value: 3,
                          groupValue: index,
                          onChanged: (int? value) {
                            setState(() {
                              index = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF0038FF),
                            image: DecorationImage(
                              image: AssetImage("assets/images/paypal.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Paypal",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 65.0,
            ),
            Container(
              //margin: EdgeInsets.only(top: 100.0),
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFA4A0C),
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.0, vertical: 25.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () async{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Succesfully Updated...")));
                 await Navigator.push(context, MaterialPageRoute(builder: (context) => DeliciousFood()));
                },
                child: Text(
                  "Update information",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
