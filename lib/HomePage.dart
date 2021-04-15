import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets.dart';
import 'dart:ui';
import 'constraints.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                color: Color(getColorHexFromStr('#fff5ea')),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            contentPadding:
                                EdgeInsets.only(top: 15.0, left: 15.0),
                            hintText: 'Search for recipes and channels',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'POPULAR RECIPE',
                                style: kHeadText,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'THIS WEEK',
                                style: kHeadText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    height: 175,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        foodCard(),
                        SizedBox(
                          width: 10,
                        ),
                        foodCard(),
                        SizedBox(
                          width: 10,
                        ),
                        foodCard(),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              '7 September',
              style: knormalText,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'TODAY',
              style: kHeadText.copyWith(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 275,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage('assets/images/burger1.jpg'),
                          fit: BoxFit.cover)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, top: 150),
                child: Column(
                  children: [
                    Text(
                      'BEST OF',
                      style: kHeadText.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'THE DAY',
                      style: kHeadText.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 3,
                      width: 50,
                      color: Colors.orange,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
