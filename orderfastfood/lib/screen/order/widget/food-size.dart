import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';

class FoodSize extends StatefulWidget {
  const FoodSize({
    Key ? key
  }): super(key: key);

  @override
  State < FoodSize > createState() => _FoodSizeState();
}

class _FoodSizeState extends State < FoodSize > {
  bool _selectMSize = false;
  bool _selectSSize = false;
  bool _selectLSize = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 270. w,
            margin: EdgeInsets.only(bottom: 15. h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectSSize = true;
                      _selectLSize = false;
                      _selectMSize = false;
                    });
                  },
                  child: Container(
                    height: 50. w,
                    width: 50. w,
                    decoration: BoxDecoration(
                      color: _selectSSize ? AppColors.colorPrimary : Colors.white,
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
                      child: Text(
                        'S',
                        style: TextStyle(
                          color: _selectSSize ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectSSize = false;
                      _selectLSize = true;
                      _selectMSize = false;
                    });
                  },
                  child: Container(
                    height: 50. w,
                    width: 50. w,
                    decoration: BoxDecoration(
                      color: _selectLSize ? AppColors.colorPrimary : Colors.white,
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
                      child: Text(
                        'L',
                        style: TextStyle(
                          color: _selectLSize ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectSSize = false;
              _selectLSize = false;
              _selectMSize = true;
            });
          },
          child: Align(
            alignment: Alignment(0, 1.17),
            child: Container(
              height: 50. w,
              width: 50. w,
              decoration: BoxDecoration(
                color: _selectMSize ? AppColors.colorPrimary : Colors.white,
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
                child: Text(
                  'M',
                  style: TextStyle(
                    color: _selectMSize ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ),
          ),
        )
      ],
    );
  }
}