import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';
import 'package:orderfastfood/screen/screen.dart';

class PopularFoods extends StatelessWidget {
  const PopularFoods({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _viewAll(),
        SizedBox(height: 40. h),
        _food(context)
      ],
    );
  }

  Widget _food(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context,OrderScreen.routeName) ,
      child: SizedBox(
        height: 370. h,
        child: Stack(
          children: [
            Container(
              height: 325. h,
              margin: EdgeInsets.only(top: 20. h),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 212, 212, 212),
                    blurRadius: 10,
                    spreadRadius: 8
                  )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.colorPrimary
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 20. h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Chipotle Cheesy Chicken',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13. sp
                                ),
                              ),
                              Text(
                                '\$20.95',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13. sp
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5. h, ),
                          Text(
                            'Chicken Burger',
                            style: TextStyle(
                              color: AppColors.colorTint700,
                              fontWeight: FontWeight.w500,
                              fontSize: 12. sp
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, -1.1),
              child: Container(
                height: 210. h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/burger-image.png')
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _viewAll() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Popular',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16. sp
          ),
        ),
        Row(
          children: [
            Text(
              'View all',
              style: TextStyle(
                color: AppColors.colorPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 11. sp,
              ),
            ),
            SizedBox(width: 2. w, ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.colorPrimary,
              size: 11. sp,
            )
          ],
        )
      ],
    );
  }
}