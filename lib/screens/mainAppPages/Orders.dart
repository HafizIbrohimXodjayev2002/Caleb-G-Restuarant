import 'package:calebresturant/models/buyurtmalarModels.dart';
import 'package:calebresturant/screens/mainAppPages/Orders2.dart';
import 'package:calebresturant/services/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Orders extends StatefulWidget {
  String? rasm;
  Orders({this.rasm});
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Buyurtmalar>?>.value(
      value: DatabaseService().buyurtmalar1,
      initialData: null,
      child: Scaffold(
        backgroundColor: Color(0xFFEFEEEE),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Orders",
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
        body: Orders2(rasm : widget.rasm),
      ),
      
    );
  }
}
