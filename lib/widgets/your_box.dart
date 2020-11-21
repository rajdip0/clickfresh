

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class YourBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(

      children: <Widget>[
        _boxContain("Net weight of", "prepped meat only ",
            "assets/images/foot-scale.jpg"),
        _boxContain("Temperature", "Between 4 deg C -8",
            "assets/images/basal-body-temperature.jpg")

      ],
    );
  }

  _boxContain(String netW, String tem, String imgPath) {
    return  Container(
      //height: height*0.07,
      height: 100.0,
        padding: EdgeInsets.all(10.0),
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
                          color: Colors.grey[300],
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 50.0,
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
                                netW,
                                style: TextStyle(fontSize: 15.0),
                              ),
                              Text(
                                tem,
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
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