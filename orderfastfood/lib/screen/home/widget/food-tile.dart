import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';
import 'package:orderfastfood/model/model.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    required this.food,
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250. h,
      width: 100. w,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: food.isSelected ? AppColors.colorPrimary : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: !food.isSelected ? Colors.grey[200] ! : Colors.transparent,
            blurRadius: !food.isSelected ? 10 : 0,
            spreadRadius: !food.isSelected ? 3 : 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50. w,
            width: 50. w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(food.iconPath))
            ),
          ),
          Text(
            food.name,
            style: TextStyle(
              color: food.isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15. sp
            ),
          ),
          Container(
            height: 25. w,
            width: 25. w,
            decoration: BoxDecoration(
              color: food.isSelected ? Colors.white : Colors.black,
              shape: BoxShape.circle
            ),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: food.isSelected ? Colors.black : Colors.white,
              size: 14. sp,
            ),
          ),
        ],
      ),
    );
  }
}