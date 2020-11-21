import 'package:clickfresh/screens/helper/item_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypesOfSteaks extends StatefulWidget {
  final String title;
  TypesOfSteaks({Key key, this.title}) : super(key: key);
  @override
  _TypesOfSteaks createState() => _TypesOfSteaks();
}

class _TypesOfSteaks extends State<TypesOfSteaks> {
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: height*0.03,
        ),
        _itemBuilder('Chicken Drumstick', "540", "120",
            "assets/images/delish-190808-baked-drumsticks-0185-landscape-pf-1567089281.jpg"),
        SizedBox(
          height: 10.0,
        ),
        _itemBuilder("Chicken Curry Cut", "340", "90",
            "assets/images/curyy-cut_COMPRESSED.png"),
        SizedBox(
          height: 10.0,
        ),
        _itemBuilder("Chicken Breast", "250", "84",
            "assets/images/AdobeStock_200759507.jpeg")
      ],
    );
  }

  _itemBuilder(String name, String netWet, String price, String imgUrl) {
    return Padding(
        padding: EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Itemdetails(
                      herotag: name,
                      foodName: name,
                      price: price,
                      imPath: imgUrl,
                      netwt: netWet,
                    )));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        height: 80.0,
                        image: AssetImage(imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: GoogleFonts.notoSans(
                              fontSize: 13.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Net wt." + netWet + " gms",
                          style: GoogleFonts.notoSans(
                              fontSize: 11.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '\$' + price,
                              style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  textStyle:
                                      TextStyle(color: Color(0xFFF68D7F))),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              FloatingActionButton(
                heroTag: name,
                mini: true,
                onPressed: () {
                  debugPrint("ADD item");
                },
                child: Center(
                  child: Icon(Icons.add, color: Colors.white),
                ),
                backgroundColor: Color(0xFFF68D7F),
              )
            ],
          ),
        ));
  }
}
