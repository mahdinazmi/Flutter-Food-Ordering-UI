import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.w,
      width: 240.w,
      margin: EdgeInsets.only(bottom: 60.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/burger2-image.png'),
          alignment: Alignment.topCenter,
        )
      ),
    );
  }
}