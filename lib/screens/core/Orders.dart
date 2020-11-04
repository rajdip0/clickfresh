import 'package:clickfresh/screens/core/OrderTracking.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  color: Colors.redAccent,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop(MaterialPageRoute(
                                builder: (context) => OrderTracking(),
                              ));
                            },
                            icon: Icon(Icons.arrow_back_ios_outlined),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Your Orders",
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.0,
                      ),
                      Container(
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    height: 1800,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF5e75d1)),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Check your order every time",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Always check the order bill and',
                                            style: GoogleFonts.notoSans(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "click order recieved button.",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )),
                                ),
                                // Container(
                                //   //padding: EdgeInsets.all(10.0),
                                //   child: ClipRRect(
                                //     // borderRadius: BorderRadius.circular(10.0),
                                //     child: Image(
                                //       height: 80.0,
                                //       image: AssetImage(
                                //           "asset/02-Billing-and-Invoice-Generation.png"),
                                //       fit: BoxFit.cover,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),

                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
