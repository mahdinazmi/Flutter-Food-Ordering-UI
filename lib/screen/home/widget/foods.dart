import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/model/model.dart';
import 'package:orderfastfood/screen/home/widget/food-tile.dart';
import 'package:orderfastfood/util/helper/home-helper.dart';

class Foods extends StatefulWidget {
  const Foods({
    Key ? key
  }): super(key: key);

  @override
  State < Foods > createState() => _FoodsState();
}

class _FoodsState extends State < Foods > {
  List < Food > _foods = [];

  @override
  void didChangeDependencies() {
    _getFoods();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250. h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _foods.length,
        clipBehavior: Clip.none,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 25. w, ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                for (var element in _foods) {
                  element.isSelected = false;
                }
                _foods[index].isSelected = true;
              });
            },
            child: FoodTile(food: _foods[index] ,)
          );
        }
      ),
    );
  }

  Future < void > _getFoods() async {
    _foods = await HomeHelper.getFoods();
    setState(() {});
  }
}