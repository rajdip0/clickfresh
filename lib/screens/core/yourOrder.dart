import 'package:clickfresh/screens/core/OrderTracking.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class YourOrder extends StatelessWidget {


  _orderItems(
    String imgUrl,
    String itemName,
    String price,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
         // padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Container(
                //  color: Colors.amber,
                height: 50.0,
                width: 50.0,

                child: Container(
                  //padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        height: 50.0,
                        width: 50.0,
                        image: AssetImage(imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              itemName.text.bold.size(18).make().p(10.0),
            ],
          ),
        ),
        Container(
         // padding: EdgeInsets.all(10.0),
          child: price.text.bold.size(18.0).make(),
        )
      ],
    );
  }

  _devliveredandReorder(String content , String reoder){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HStack([
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                color: Colors.blue, shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                onPressed: () {
                 // Get.to(OrderTracking());
                },
                color: Colors.white,
                icon: Icon(Icons.done_rounded),
              ),
            ),
          ),
          SizedBox(
            width:10.0,
          ),
          content.text.bold.size(17.0).make(),
        ]),

        HStack([
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                color: Colors.orange[200],
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                 // Get.to(OrderTracking());
                },
                color: Colors.red,
                icon: Icon(Icons.refresh),
              ),
            ),
          ),
          SizedBox(
            width:10.0,
          ),
          reoder.text.bold.size(17.0).make(),
        ]),

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        height: double.infinity,
        child: VStack(
          [
            // Container(
            //   color: Colors.red,
            //   child:
            // ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                HStack([
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
                  SizedBox(
                    width: width * 0.02,
                  ),
                  "Your Orders".text.bold.size(20.0).color(Colors.white).make(),
                ]),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
              ],
            ).p(12.0),
            Expanded(
              child: Stack(
                //alignment: AlignmentDirectional.bottomCenter,
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  // PageView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   controller: _pageController,
                  //   onPageChanged: _onPageChanged,
                  //   itemCount: slideList.length,
                  //   itemBuilder: (ctx, i) => SlideItem(i),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ),
                  ),

                  // HStack([
                  //   Container(
                  //     height: 40.0,
                  //     width: 40.0,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white, shape: BoxShape.circle),
                  //     child: Center(
                  //       child: IconButton(
                  //         onPressed: () {
                  //           // Navigator.of(context).pop(MaterialPageRoute(
                  //           //   builder: (context) => AddCart(),
                  //           // ));
                  //         },
                  //         icon: Icon(Icons.arrow_back_ios_outlined),
                  //       ),
                  //     ),
                  //   ),
                  // ]),

                  Container(
                    height: height * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Yesterday,  8:50 AM".text.bold.size(18.0).make(),
                            "\$324".text.bold.size(18.0).make(),
                          ],
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        "ITEMS".text.make(),
                        SizedBox(
                          height: height*0.02,
                        ),

                        _orderItems("assets/images/delish-190808-baked-drumsticks-0185-landscape-pf-1567089281.jpg",
                            "Chicken Drumstick x 2", "\$240"),
                        SizedBox(
                          height: height*0.02,
                        ),
                        _orderItems("assets/images/baked-chicken-breast-square-1200-4876.jpg",
                            "Chicken Breast x 1", "\$84"),
                        SizedBox(
                          height: height*0.03,
                        ),

                        _devliveredandReorder("Delivered", "Re-order"),
                        SizedBox(
                          height: height*0.06,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "31/08/19, 2:24 PM".text.bold.size(18.0).make(),
                            "\$240".text.bold.size(18.0).make(),
                          ],
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        "ITEMS".text.make(),
                        SizedBox(
                          height: height*0.02,
                        ),
                        _orderItems("assets/images/delish-190808-baked-drumsticks-0185-landscape-pf-1567089281.jpg",
                            "Chicken Drumstick x 2", "\$240"),
                        SizedBox(
                          height: height*0.05,
                        ),

                        _devliveredandReorder("Delivered", "Re-order"),
                        SizedBox(
                          height: height*0.06,
                        ),



                      ],
                    ).p(20.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
