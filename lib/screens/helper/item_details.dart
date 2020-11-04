import 'package:clickfresh/screens/core/cartScreen.dart';
import 'package:clickfresh/screens/core/catagory_list.dart';
import 'package:clickfresh/widgets/your_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/catagory_list.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class Itemdetails extends StatefulWidget {
  final imPath, foodName, price, netwt, herotag;

  Itemdetails(
      {this.foodName, this.imPath, this.price, this.netwt, this.herotag});

  @override
  _ItemdetailsState createState() => _ItemdetailsState();
}

class _ItemdetailsState extends State<Itemdetails> {
  var netPrice = 0.0;
  var quantity = 1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: VStack([
        Container(
         // padding: EdgeInsets.all(10.0),
          width:  width,
          height: height,
          child: Stack(
            children: <Widget>[
              Container(
                child: Hero(
                  tag: widget.herotag,
                  child: Container(
                    width: width * 1.00,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imPath),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              builder: (context) => CatagoryScreen(),
                            ));
                          },
                          icon: Icon(Icons.arrow_back_ios_outlined),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  //padding: EdgeInsets.all(2.0),
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: VStack([
                    Container(
                      padding: EdgeInsets.only(top: 5.0, left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            widget.foodName.toString(),
                            style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    height: 25.0,
                                    image:
                                    AssetImage("assets/images/Untitled-1 copy.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  " No.of Pieces 5-7",
                                  style: TextStyle(fontSize: 15.0),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    height: 25.0,
                                    image: AssetImage("assets/images/download.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Net wt. " + widget.netwt.toString() + " gms",
                                  style: TextStyle(fontSize: 15.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Instructions",
                            style: GoogleFonts.raleway(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "For that craving to bite into something chunky and juicy. Dark, tender meat with bone the lower leg of the chicken.",
                            style: GoogleFonts.raleway(fontSize: 15.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        child: Text(
                          "What's in your Box",
                          style: GoogleFonts.raleway(
                              fontSize: 20.0, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    //YourBox(),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: height*0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFfabe5c)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, top: 10.0),
                              child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Free Delivery",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        '  \$0 for 30 days',
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: 70.0,
                            ),
                            Container(
                              //padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: height*0.10,
                                  width: width*0.20,
                                  image: AssetImage("assets/images/FreeDelivery.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///Quantity
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.all(15.0),
                              color: Colors.white,
                              child: Center(
                                  child: Text(
                                    "Quantity",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800),
                                  ))),
                          Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {
                                      adjustQuantity("MINUS");
                                    },
                                    icon: Icon(
                                      Icons.indeterminate_check_box,
                                      color: Colors.redAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      quantity.toString(),
                                      style: GoogleFonts.notoSans(
                                          fontSize: 22.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      adjustQuantity("PLUS");
                                    },
                                    icon: Icon(
                                      Icons.add_box,
                                      color: Colors.redAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ))
                        ]),

                    ///view Cart


                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200]),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => AddCart()));
                          },
                          child: Container(
                            padding:
                            EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.redAccent),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quantity.toString() + " ITEM",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 15.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '\$'+
                                                  (int.parse(widget.price) *
                                                          quantity)
                                                      .toString(),
                                                  style: GoogleFonts.notoSans(
                                                      fontSize: 22.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text(
                                                  "Incl taxes",
                                                  style: GoogleFonts.raleway(
                                                      color: Colors.white,
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            "View Cart",
                                            style: GoogleFonts.raleway(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20.0,
                                                color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 22.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ))
                  ])
                ),
              )
            ],
          ),
        ),
      ])
    );
  }

  adjustQuantity(pressed) {
    switch (pressed) {
      case 'PLUS':
        setState(() {
          quantity += 1;
        });
        return;
      case 'MINUS':
        setState(() {
          if (quantity != 0) {
            quantity -= 1;
          }
        });
        return;
    }
  }
}
