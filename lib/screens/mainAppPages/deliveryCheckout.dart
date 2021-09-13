

import 'package:calebresturant/screens/mainAppPages/paymentCheckout.dart';
import 'package:flutter/material.dart';

class DeliveryCheckout extends StatefulWidget {
  String? rasm;
  String? ovqatIsm;
  String? pul;
  DeliveryCheckout({this.rasm,  this.ovqatIsm, this.pul});
  @override
  _DeliveryCheckoutState createState() => _DeliveryCheckoutState();
}

class _DeliveryCheckoutState extends State<DeliveryCheckout> {
  int index = 0;
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
              "Delivery",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Address detail",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "change",
                  style: TextStyle(
                    color: Color(0xFFFFFA4A0C),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 40, right: 40.0),
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
                      height: 10.0,
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
                      height: 10.0,
                    ),
                    Text(
                      "Trasco hotel behind navrongo campus",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
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
                      height: 10.0,
                    ),
                    Text(
                      "+233 567832",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 13.0,
                      ),
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
                          value: 2,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentCheckout(
                         rasm : widget.rasm,
                        ovqatIsm: widget.ovqatIsm,
                        pul: widget.pul,
                      ),
                    ),
                  );
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
