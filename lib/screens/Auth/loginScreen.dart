import 'dart:async';

import 'package:clickfresh/screens/Auth/Auth%20Widgets/slide_dots.dart';
import 'package:clickfresh/screens/Auth/Auth%20Widgets/slide_item.dart';
import 'package:clickfresh/screens/core/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

import 'Auth Models/slide_data.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController numController = new TextEditingController();

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(context.mdWindowSize);
    return Scaffold(
      body: Container(
        //color: Color(0xFFfaf2af),
        height: double.infinity,
        child: VStack(
          [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Image(
            //       height: 50.0,
            //       width: 50.0,
            //       image: AssetImage("assets/av.png"),
            //       fit: BoxFit.cover,
            //     ).p(5.0).box.make(),
            //     // SizedBox(
            //     // width: width*0.69,
            //     // ),
            //     "Skip".text.size(20.0).semiBold.make().box.make(),
            //   ],
            // ).box.p16.make(),

            Expanded(
              child: Stack(
                //alignment: AlignmentDirectional.bottomCenter,
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: slideList.length,
                    itemBuilder: (ctx, i) => SlideItem(i),
                  ),
                  Container(
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            /// mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        ).p(5.0),
                        Container(
                          child: VStack([
                            SizedBox(
                              height: height * 0.01,
                            ),
                            "Get your Meat Delivered"
                                .text
                                .center
                                .size(22.0)
                                .fontFamily("Quicksand")
                                .bold
                                .make()
                                .p(10.0),
                            // "Login or sign up to place your order"
                            //     .text
                            //     .size(20.0)
                            //     .color(Colors.grey[500])
                            //     .make(),
                            SizedBox(
                              height: height * 0.01,
                            ),

                            TextFormField(
                              controller: numController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Colors.black,
                                  size: width * 0.07,
                                ),
                                hintText: "+1 (454) 567 5678",
                                hintStyle: TextStyle(fontFamily: "Quicksand"),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.orange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.white),
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.red)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white)),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(HomeScreen());
                              },
                              child: "Next Step"
                                  .text
                                  .color(Colors.white)
                                  .size(20.0)
                              .semiBold
                                  .make()
                                  .box
                                  .alignCenter
                                  .height(height * 0.07)
                                  .color(Colors.deepOrange)
                                  .rounded
                                  .make()
                                  .p(10.0),
                            ),
                          ]),
                        )
                      ],
                    ).p(5.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ).p(5.0),
    );
  }
}
