import 'package:carousel_slider/carousel_slider.dart';

import 'package:clickfresh/utils/constant.dart';
import 'package:clickfresh/widgets/types_Of_steak.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catagory_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(MaterialCommunityIcons.home),
            ),
            // Tab(
            //   icon: Icon(Icons.attach_money),
            // ),
            // Tab(
            //   icon: Icon(Icons.shopping_cart),
            // ),
            // Tab(
            //   icon: Icon(Icons.account_circle),
            // )
          ],
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(8.0),
          indicatorColor: Colors.red,
        ),
        body: TabBarView(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                child: VStack([
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children: [
                      Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: width * 0.0,
                            ),
                            "Kolkata city"
                                .text
                                .color(Colors.white)
                                .fontFamily("Poppins")
                                .make()
                          ])
                          .box
                          .width(width * 0.3)
                          .p4
                          .margin(EdgeInsets.only(left: width * 0.06))
                          .rounded
                          .orange700
                          .make(),
                      SizedBox(
                        width: width * 0.475,
                      ),
                      "assets/images/av.png".circularAssetImage().w10(context)
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.06, right: width * 0.06),
                    child: TextField(
                        decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: width * 0.07,
                      ),
                      hintText: "What are you craving for?",
                      hintStyle: TextStyle(fontFamily: "Poppins"),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.orange),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.white)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  buildCarouselSlider(),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  "Explore by Category"
                      .text
                      .bold
                      .size(width * 0.04)
                      .fontFamily("Poppins")
                      .make()
                      .box
                      .margin(EdgeInsets.only(left: width * 0.06))
                      .make(),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  HStack([
                    SizedBox(
                      width: width * 0.06,
                    ),
                    InkWell(
                      onTap: () => Get.to(CatagoryScreen()),
                      child: Column(
                        children: [
                          Container(
                              width: width * 0.15,
                              height: height * 0.08,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFffd978),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: SizedBox(
                                width: width * 0.01,
                                height: height * 0.01,
                                child: Image.asset(
                                  "assets/images/steak.png",
                                  fit: BoxFit.contain,
                                ),
                              )),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          "Steak".text.semiBold.fontFamily("Poppins").make()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Column(
                      children: [
                        Container(
                            width: width * 0.15,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Color(0xFFFc3b8fc),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: SizedBox(
                              width: width * 0.01,
                              height: height * 0.01,
                              child: Image.asset(
                                "assets/images/shrimp.png",
                                fit: BoxFit.contain,
                              ),
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        "Shrimp".text.semiBold.fontFamily("Poppins").make()
                      ],
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Column(
                      children: [
                        Container(
                            width: width * 0.15,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Color(0xFFFfabaa5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: SizedBox(
                              width: width * 0.01,
                              height: height * 0.01,
                              child: Image.asset(
                                "assets/images/ham.png",
                                fit: BoxFit.contain,
                              ),
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        "Ham".text.semiBold.fontFamily("Poppins").make()
                      ],
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Column(
                      children: [
                        Container(
                            width: width * 0.15,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Color(0xFFF94e4f9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: SizedBox(
                              width: width * 0.01,
                              height: height * 0.01,
                              child: Image.asset(
                                "assets/images/fish.png",
                                fit: BoxFit.contain,
                              ),
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        "Fish".text.semiBold.fontFamily("Poppins").make()
                      ],
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Column(
                      children: [
                        Container(
                            width: width * 0.15,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Color(0xFFFfcb685),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: SizedBox(
                              width: width * 0.01,
                              height: height * 0.01,
                              child: Image.asset(
                                "assets/images/tuna.png",
                                fit: BoxFit.contain,
                              ),
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        "Sushi".text.semiBold.fontFamily("Poppins").make()
                      ],
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Column(
                      children: [
                        Container(
                            width: width * 0.15,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: SizedBox(
                              width: width * 0.01,
                              height: height * 0.01,
                              child: Image.asset(
                                "assets/images/beef.png",
                                fit: BoxFit.contain,
                              ),
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        "Meat".text.semiBold.fontFamily("Poppins").make()
                      ],
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                  ]).scrollHorizontal(),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  "Order Again"
                      .text
                      .bold
                      .size(width * 0.04)
                      .fontFamily("Poppins")
                      .make()
                      .box
                      .margin(EdgeInsets.only(left: width * 0.06))
                      .make(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  HStack([
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xFFF94e4f9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image.asset(
                            "assets/images/chicken.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Chicken Drumstick".text.bold.make(),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            "Pieces 5-7".text.semiBold.make(),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            "Ordered 2 days ago".text.tight.teal500.make(),
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xFFF94e4f9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image.asset(
                            "assets/images/chicken.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Chicken Drumstick".text.bold.make(),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            "Pieces 5-7".text.semiBold.make(),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            "Ordered 2 days ago".text.tight.teal500.make(),
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xFFF94e4f9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image.asset(
                            "assets/images/chicken.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Chicken Drumstick".text.bold.make(),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            "Pieces 5-7".text.semiBold.make(),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            "Ordered 2 days ago".text.tight.teal500.make(),
                          ],
                        )
                      ],
                    )),
                  ]).scrollHorizontal(),
                      SizedBox(
                          height : height * 0.05,
                        ),
                  VStack([
                    TypesOfSteaks( title: "Recommended",)
                  ]).scrollVertical()
                ]).scrollVertical()),
          ],
        ),
      ),
    );
  }

  CarouselSlider buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        viewportFraction: 0.9,
        aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imgList.map(
        (url) {
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(
                    url,
                    fit: BoxFit.cover,
                    width: 1000.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Sunny Getaways",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                            "Lorem Ipsım Dolar Lorem Ipsım Dolar Lorem Ipsım Dolar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
