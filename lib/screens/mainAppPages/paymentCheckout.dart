import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/screens/mainAppPages/Orders.dart';
import 'package:calebresturant/screens/mainAppPages/Orders2.dart';
import 'package:calebresturant/services/firestore.dart';
import 'package:flutter/material.dart';

class PaymentCheckout extends StatefulWidget {
  String? rasm;
  String? ovqatIsm;
  String? pul;
  PaymentCheckout({this.rasm, this.ovqatIsm, this.pul});
  @override
  _PaymentCheckoutState createState() => _PaymentCheckoutState();
}

class _PaymentCheckoutState extends State<PaymentCheckout> {
  int index = 0;
  int index1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEEEE),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Check out",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Payment method",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 170.0,
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
                          groupValue: index1,
                          onChanged: (int? value) {
                            setState(() {
                              index1 = value!;
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
                          groupValue: index1,
                          onChanged: (int? value) {
                            setState(() {
                              index1 = value!;
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Delivery method",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 160.0,
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
                        Text(
                          "Door delivery",
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
                          value: 4,
                          groupValue: index,
                          onChanged: (int? value) {
                            setState(() {
                              index = value!;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Pick up",
                          style: TextStyle(fontSize: 14.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "\$23,000",
                  style: TextStyle(
                    color: Color(0xFFFFFA4A0C),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 29.0,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFA4A0C),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            height: 320.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 70.0,
                                  width: 300.0,
                                  padding:
                                      EdgeInsets.only(top: 25.0, left: 35.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFEEEE),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    "Please Note",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 30, right: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "DELIVERY TO TRASCO",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "GHS 2 - GH 3",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      SizedBox(
                                        height: 1.0,
                                        child: Container(
                                          height: 1.0,
                                          width: 300.0,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      Text(
                                        "DELIVERY TO CAMPUS",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "GHS 1",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () async {
                                              await DatabaseService(uid: widget.ovqatIsm)
                                                  .malumotUpdate(
                                                      widget.ovqatIsm,
                                                      widget.pul);
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Buyurtmangiz Qabul Qilindi...")));
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => DeliciousFood(
                                                    rasm : widget.rasm,
                                                  ),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30.0,
                                                  vertical: 15.0),
                                              primary: Color(0xFFFFFA4A0C),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Proceed",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  "Proccesed to payment",
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
}
