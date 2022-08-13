import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/appbar.dart';
import 'widget/foods.dart';
import 'widget/header.dart';
import 'widget/popular-foods.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 15. w, left: 15. w, bottom: 10. h),
              child: Column(
                children: [
                  HomeHeader(),
                  SizedBox(height: 40. h, ),
                  Foods(),
                  SizedBox(height: 40. h, ),
                  PopularFoods()
                ],
              ),
            ),
          ),
      ),
    );
  }
}