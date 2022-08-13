import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/appbar.dart';
import 'widget/food-count.dart';
import 'widget/food-image.dart';
import 'widget/food-info.dart';
import 'widget/food-size.dart';
import 'widget/go-to-cart.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = '/order';
  const OrderScreen({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 650. h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(200), ),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 221, 220, 220),
                        blurRadius: 15,
                        spreadRadius: 1
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              OrderAppBar(),
                              SizedBox(height: 60. h, ),
                              FoodInfo(),
                            ],
                          ),
                          FoodImage()
                        ],
                      ),
                     FoodSize()
                    ],
                  ),
                ),
                SizedBox(height: 90. h, ),
                FoodCount(),
                SizedBox(height: 90. h, ),
                GoToCart(),
                SizedBox(height: 20. h, ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}