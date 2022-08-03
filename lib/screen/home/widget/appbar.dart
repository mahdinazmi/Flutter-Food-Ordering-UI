import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/gridicons-location.svg',
            color: AppColors.colorPrimaryDark,
          ),
          SizedBox(width: 3. w, ),
          Text(
            'Chicago,',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 15. sp
            ),
          ),
          SizedBox(width: 2. w, ),
          Text(
            'IL',
            style: TextStyle(
              color: AppColors.colorTint600,
              fontWeight: FontWeight.w600,
              fontSize: 15. sp
            ),
          ),
        ],
      ),
      leadingWidth: 35. w,
      leading: Padding(
        padding: EdgeInsets.only(left: 15. w),
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
        ),
      ),
      actions: [
        Container(
          height: 37. w,
          width: 37. w,
          margin: EdgeInsets.only(right:15.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/images/profile-image.jpg')
            )
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}