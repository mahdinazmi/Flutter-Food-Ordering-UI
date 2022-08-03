import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/appbar.dart';
import 'widget/food-image.dart';
import 'widget/food-info.dart';

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
        child: SingleChildScrollView(
          child: Container(
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 270. w,
                    margin: EdgeInsets.only(bottom: 15. h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50. w,
                          width: 50. w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 212, 212, 212),
                                blurRadius: 10,
                                spreadRadius: 3
                              )
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 23. sp,
                            )
                          ),
                        ),
                        Container(
                          height: 50. w,
                          width: 50. w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 212, 212, 212),
                                blurRadius: 10,
                                spreadRadius: 3
                              )
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 23. sp,
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1.17),
                  child: Container(
                    height: 50. w,
                    width: 50. w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 212, 212, 212),
                          blurRadius: 10,
                          spreadRadius: 3
                        )
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 23. sp,
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}