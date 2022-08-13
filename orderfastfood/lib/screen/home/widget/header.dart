import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10. h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getYouOrderText(),
          SizedBox(height: 20. h, ),
          _searchField()
        ],
      ),
    );
  }

  Widget _getYouOrderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22. sp,
            fontWeight: FontWeight.w600
          ),
        ),
        Text(
          'Let’s get your order',
          style: TextStyle(
            color: AppColors.colorTint600,
            fontSize: 14. sp,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }

  Widget _searchField() {
    return SizedBox(
      height: 60.h,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left:10.w),
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: AppColors.colorTint200, ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: AppColors.colorTint200, ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.colorTint600,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xffDDE2E8),
          hintText: 'Search our delicious burgers',
          hintStyle: TextStyle(
            color: AppColors.colorTint600,
            fontSize: 12.sp
          )
        ),
        style: TextStyle(
          color: AppColors.colorTint700,
          fontSize: 14.sp
        ),
        autocorrect: false,
        enableSuggestions: false,
      ),
    );
  }
}