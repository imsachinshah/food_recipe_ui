import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget foodCard() {
  return Container(
    height: 125,
    width: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage('assets/images/balanced.jpg'))),
          height: 125,
          width: 100,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Grilled Chicken',
            ),
            Text(
              'with Fruit Salad',
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 2.0,
              width: 75,
              color: Colors.orange,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      image: DecorationImage(
                          image: AssetImage('assets/images/dp.jpg'))),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Nisha Singh',
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
