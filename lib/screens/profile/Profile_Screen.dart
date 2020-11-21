import 'package:clickfresh/screens/core/yourOrder.dart';
import 'package:clickfresh/screens/profile/Edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MainProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: VStack(


        [
          SizedBox(
            height: height*0.06,
          ),
          Container(
            child: Center(
              child:"PROFILE".text.bold.size(20.0).make(),
            ),
          ),
          Container(
            height: height*0.20,
            width: width*0.40,
            child: Image(
              height: height*0.30,
              width: width*0.30,
              image: AssetImage("assets/images/av.png"),
            ).centered(),
          ).centered(),
          SizedBox(
            height: height*0.01,
          ),
          Container(
            child: Center(
              child:"HyperX".text.bold.size(18.0).make(),
            ),
          ),
          SizedBox(
            height: height*0.01,
          ),
          Container(
          child:VStack(
            [
              "hyper90876@gmail.com".text.make().centered(),
              SizedBox(
                height: height*0.01,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(Profile_Screen());
                },
                child: Text(
                  "Update Profile",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).centered(),
            ]
          )
        ).centered(),
          SizedBox(
            height: height*0.01,
          ),
         InkWell(
           onTap: (){

           },
           child:  _contents("assets/images/qst.png", "FAQ'S", "Frequently asked questions"),
         ),
          SizedBox(
            height: height*0.01,
          ),
          InkWell(
            onTap: (){

            },
            child:  _contents("assets/images/support.jpg", "Support", "Contact details"),
          ),
          SizedBox(
            height: height*0.01,
          ),
          InkWell(
            onTap: (){

            },
            child:  _contents("assets/images/Terms-and-conditions.png", "Term and Condition", "while using our app"),
          )


        ]
      ),
    );
  }
  
  _contents(String imgurl, String faqSupportTerm, String description){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Container(
                //  color: Colors.amber,
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image(
                        height: 40.0,
                        width: 40.0,
                        image: AssetImage(
                            imgurl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    faqSupportTerm,
                    style: GoogleFonts.notoSans(
                        fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        description,
                        style: GoogleFonts.lato(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.arrow_forward_ios
          )
        )
      ],
    );
  }
}
