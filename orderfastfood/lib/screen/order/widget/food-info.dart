import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Chipotle Cheesy Chicken',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15. sp
          ),
        ),
        SizedBox(height: 13. h),
        Padding(
          padding: EdgeInsets.only(right: 30. w, left: 30. w),
          child: Text(
            'A signature flame-grilled chicken\n patty topped with smoked beef',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorTint600,
              fontSize: 12. sp
            ),
          ),
        ),
      ],
    );
  }
}