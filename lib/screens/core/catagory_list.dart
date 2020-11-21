import 'package:clickfresh/widgets/types_Of_steak.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CatagoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.orange[300],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ).px16(),
              ),
              onPressed: () => navigator.pop(),
            ),
            title: Text(
              "Steak",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                  height: height*0.14,
                  // width: 40.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildListItem("Packaging", "Temper Proof",
                          "assets/images/packing.png"),
                      _buildListItem("Delivery", "Express 2 Hours",
                          "assets/images/delvary2.jpg")
                    ],
                  )),
              SizedBox(
                height: height*0.02,
              ),
              TypesOfSteaks(
                title: "16 types of Steaks",
              ),
            ],
          ),
        ),
      );

  }

  _buildListItem(String delinfo, String ddetails, String imgPath) {
    return Container(
        padding: EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      //width: 200.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          // Container(
                          //    height:80.0,
                          //    width: 65.0,
                          //     padding: EdgeInsets.all(15.0),
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(20.0),
                          //         color: Color(0xFFb7e1ed)
                          //       ),
                          //     child:  Image.assets/images(imgPath,height: 70.0,width: 70.0 ,),
                          // ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 70.0,
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                delinfo,
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                ddetails,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
