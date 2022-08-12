import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class GoToCart extends StatelessWidget {
  const GoToCart({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding:EdgeInsets.only(left:10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 13. sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.colorTint700,
                  ),
                ),
                SizedBox(height: 10. h),
                Text(
                  '\$ 41.90',
                  style: TextStyle(
                    fontSize: 17. sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 85. h,
            decoration: BoxDecoration(
              color: AppColors.colorPrimary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/bag.svg'),
                SizedBox(width: 10.w,),
                Text(
                  'Go To Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}