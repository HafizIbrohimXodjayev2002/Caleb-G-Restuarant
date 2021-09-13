import 'package:calebresturant/screens/delicuousFood.dart';
import 'package:calebresturant/screens/mainAppPages/foodDeteil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  List<String> ovaqatlar = [
    "https://courses.su/upload/iblock/80a/80a3ad9ab859fd99a2b65110b59ac29d.jpg",
    "https://kartinkin.com/uploads/posts/2021-04/1617237605_4-p-tarelka-zdorovogo-pitaniya-krasivo-4.jpg",
    "https://dhealthylifestyle.files.wordpress.com/2014/12/steaks_wallpaper_d5rl7.jpg",
    "https://pikwizard.com/photos/cb310bb51212be188b8b5ba26b8297f6-m.jpg",
  ];

  int? _index;
  int? i;

  List<String> ovqatNomlari = [
    "    Veggie\ntomato mix",
    "Spicy and Fried\n        Souce",
    "Deliciosu Food",
  ];
  List<String> ovqatNomlari2 = [
    "Veggie tomato mix",
    "Spicy and Fried Souce",
    "Deliciosu Food",
  ];

  List<String> ghs = [
    "GHS 8.00",
    "GHS 16.00",
    "GHS 20.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
            child: Container(
              child: Text(
                "Delicious\nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 40.0,
          // ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 25, bottom: 25.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                hintText: "Search",
                hintStyle: TextStyle(color: Color(0xFF948063), fontSize: 16.0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    )),
                prefixIcon: Image.asset(
                  "assets/images/search.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 0, bottom: 20.0),
            child: TabBar(
              isScrollable: true,
              controller: tabController,
              labelColor: Color(0xFFFFFA4A0C),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFFFFFA4A0C),
              tabs: [
                Tab(
                  text: "  All  ",
                  //Mocha
                ),
                Tab(
                  text: "Foods", //Doppio
                ),
                Tab(
                  text: "Drinks",
                ),
                Tab(
                  text: "Sauces",
                ),
                Tab(
                  text: "Chocolates",
                ),
                Tab(
                  text: "Fast Foods",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "see more",
                style: TextStyle(
                  color: Color(0xFFFFFA4A0C),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: _ruchnoyContainer(),
          ),
        ],
      ),
    );
  }

  _ruchnoyContainer() {
    return Container(
      height: 320.0,
      // width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodDetail(
                            rasm: ovaqatlar[index],
                            ism: ovqatNomlari2[index],
                            ghs: ghs[index],
                          )));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 320.0,
              width: 220.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.5), width: 3.0),
                        image: DecorationImage(
                          image: NetworkImage(ovaqatlar[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      ovqatNomlari[index],
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(
                      ghs[index],
                      style: TextStyle(
                        color: Color(0xFFFFFA4A0C),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
