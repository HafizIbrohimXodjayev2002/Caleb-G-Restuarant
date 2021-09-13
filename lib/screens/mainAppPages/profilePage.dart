

import 'package:calebresturant/screens/mainAppPages/profileChanges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Profile",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 34.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Personal Detail",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileChanges()));
                },
                child: Text(
                  "change",
                  style: TextStyle(
                    color: Color(0xFFFFFA4A0C),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 200,
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
                        margin: EdgeInsets.only(bottom: 50.0),
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
                            SizedBox(
                              height: 1.0,
                              child: Container(
                                height: 1.0,
                                width: 200.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "+233 567832",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 13.0,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            SizedBox(
                              height: 1.0,
                              child: Container(
                                height: 1.0,
                                width: 200.0,
                                color: Colors.black.withOpacity(0.5),
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
            height: 30.0,
          ),
          Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              title: Text(
                "Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              title: Text(
                "Pending rewievs",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              title: Text(
                "FAQ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFFA4A0C),
                padding: EdgeInsets.symmetric(
                  horizontal: 130,
                  vertical: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Update",
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
}
