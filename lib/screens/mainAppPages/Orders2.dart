import 'dart:math';
import 'package:calebresturant/models/buyurtmalarModels.dart';
import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/services/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class Orders2 extends StatefulWidget {
  String? rasm;
  Orders2({this.rasm});
  int index2 = 0;
  @override
  _Orders2State createState() => _Orders2State();
}

class _Orders2State extends State<Orders2> {
  List<String> ovaqatlar = [
    "https://courses.su/upload/iblock/80a/80a3ad9ab859fd99a2b65110b59ac29d.jpg",
    "https://kartinkin.com/uploads/posts/2021-04/1617237605_4-p-tarelka-zdorovogo-pitaniya-krasivo-4.jpg",
    "https://dhealthylifestyle.files.wordpress.com/2014/12/steaks_wallpaper_d5rl7.jpg",
    "https://pikwizard.com/photos/cb310bb51212be188b8b5ba26b8297f6-m.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final buyurtmalar = Provider.of<List<Buyurtmalar>>(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: buyurtmalar.length != 0
          ? Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.swap_horiz_outlined,
                        size: 27.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Swipe on item to delete it",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: buyurtmalar.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        
                        actionExtentRatio: 0.18,
                        key: Key(buyurtmalar[index].ism!),
                        actionPane: SlidableDrawerActionPane(),
                        secondaryActions: <Widget>[
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                              ),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                        dismissal: SlidableDismissal(
                          child: SlidableDrawerDismissal(),
                          onDismissed: (actionType) {
                            setState(() {
                              DatabaseService()
                                  .malumotID(buyurtmalar[index].ism);
                              buyurtmalar.removeAt(index);
                            });
                          },
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 120.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: buyurtmalar[index].holat == false
                                  ? Colors.white
                                  : Colors.green,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100.0,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                ovaqatlar[Random().nextInt(4)]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              buyurtmalar[index].ism!,
                                              style: TextStyle(
                                                color:
                                                    buyurtmalar[index].holat ==
                                                            false
                                                        ? Colors.black
                                                        : Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  buyurtmalar[index].narx!,
                                                  style: TextStyle(
                                                    color: buyurtmalar[index]
                                                                .holat ==
                                                            false
                                                        ? Colors.red
                                                        : Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                buyurtmalar[index].holat == false ? _holatFalse() : _holatTrue(),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          : _noOrders(),
    );
  }

  _noOrders() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 100.0,
        ),
        Container(
          child: Icon(
            Icons.shopping_cart_outlined,
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

  _holatFalse() {
    return Container(
      margin: EdgeInsets.only(left: 50.0, top: 10.0),
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            height: 30.0,
            width: 33.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 15.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 30.0,
            width: 33.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                widget.index2.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: 30.0,
            width: 34.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.horizontal_rule,
                size: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _holatTrue() {
    return Container(
      margin: EdgeInsets.only(left: 120.0),
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        size: 25.0,
        color: Colors.green,
      ),
    );
  }


}


