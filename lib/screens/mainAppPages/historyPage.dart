import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _noOrders(context),
    );
  }
  _noOrders(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 100.0,
        ),
        Container(
          child: Icon(
            Icons.list_alt_outlined,
            size: 200.0,
            color: Colors.black12,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Center(
          child: Text(
            "Hit the orange button down\n   below to create an Order",
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DeliciousFood()));
            },
            child: Text(
              "Start Order",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}