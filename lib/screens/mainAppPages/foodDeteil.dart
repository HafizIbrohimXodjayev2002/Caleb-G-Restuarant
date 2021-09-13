import 'package:calebresturant/screens/mainAppPages/deliveryCheckout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDetail extends StatefulWidget {
  String? rasm;
  String? ism;
  String? ghs;
  FoodDetail( {this.rasm, this.ism, this.ghs});

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  List<String> rasmlar = [
    "https://courses.su/upload/iblock/80a/80a3ad9ab859fd99a2b65110b59ac29d.jpg",
    "https://kartinkin.com/uploads/posts/2021-04/1617237605_4-p-tarelka-zdorovogo-pitaniya-krasivo-4.jpg",
    "https://dhealthylifestyle.files.wordpress.com/2014/12/steaks_wallpaper_d5rl7.jpg",
    "https://pikwizard.com/photos/cb310bb51212be188b8b5ba26b8297f6-m.jpg",
  ];

  int activeIndex = 0;

  List<String> ghs = [
    "GHS 8.00",
    "GHS 8.00",
    "GHS 8.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
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
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: rasmlar.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = rasmlar[index];

              return imageBuilder(urlImage, index);
            },
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              height: 230,
              viewportFraction: 1,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          buidDotIndicator(),
          SizedBox(
            height: 20.0,
          ),
          Text(
            widget.ism!,
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 13.0,
          ),
          Text(
            widget.ghs!,
            style: TextStyle(
              color: Color(0xFFFFFA4A0C),
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Delivery info",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 7.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Delivered between monday aug and\nthursday 20 from 8pm to 10am",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF000000).withOpacity(0.5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Return policy",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 7.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "All our foods are double checked before\nleaving our stores so buy any case your found\nA BROKEN food please contact our hotline\nimmidiatly",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF000000).withOpacity(0.5),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryCheckout(
                      rasm : widget.rasm,
                      ovqatIsm: widget.ism,
                      pul: widget.ghs,
                    ),
                  ),
                );
              },
              child: Text(
                "Add to cart",
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

  imageBuilder(urlImage, index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(25.0),
        image: DecorationImage(
          image: NetworkImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  buidDotIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: rasmlar.length,
      effect: JumpingDotEffect(
        dotHeight: 10.0,
        dotWidth: 10.0,
        activeDotColor: Color(0xFFFFFA4A0C),
        dotColor: Colors.black12,
      ),
    );
  }
}
