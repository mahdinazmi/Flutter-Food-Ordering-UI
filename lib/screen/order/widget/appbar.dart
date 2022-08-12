import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30. h,right: 15.w,left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _back(context),
          _favorite()
        ],
      ),
    );
  }

  Widget _back(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 40. w,
        width: 40. w,
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
    );
  }
  Widget _favorite() {
    return Container(
      height: 40. w,
      width: 40. w,
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
          Icons.favorite_outline_sharp,
          color: AppColors.colorPrimary,
          size: 23. sp,
        )
      ),
    );
  }
}