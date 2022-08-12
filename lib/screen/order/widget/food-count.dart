import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class FoodCount extends StatefulWidget {
  const FoodCount({
    Key ? key
  }): super(key: key);

  @override
  State < FoodCount > createState() => _FoodCountState();
}

class _FoodCountState extends State < FoodCount > {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200. w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (_count > 1) {
                  _count--;
                }
              });
            },
            child: Container(
              width: 40. w,
              height: 40. w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.colorPrimaryLight
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 15. h),
                child: Icon(
                  Icons.minimize_sharp,
                  size: 25. sp,
                ),
              ),
            ),
          ),
          Text(
            _count.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20. sp,
              fontWeight: FontWeight.w500
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _count++;
              });
            },
            child: Container(
              width: 40. w,
              height: 40. w,
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 20. sp,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.colorPrimaryLight
              ),
            ),
          )
        ],
      ),
    );
  }
}