import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderfastfood/config/theme/theme.dart';
import 'package:orderfastfood/screen/screen.dart';

class Nav extends StatefulWidget {
  static String routeName = '/nav';
  const Nav({ Key ? key}): super(key: key);

  @override
  State < Nav > createState() => _NavState();
}

class _NavState extends State < Nav > {
  final List < Widget > _pages = [];
  int _currentIndex = 0;
  @override
  void initState() {
    _pages.add(HomeScreen());
    _pages.add(Container());
    _pages.add(Container());
    _pages.add(Container());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.colorPrimary,
        unselectedItemColor: AppColors.colorTint600,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_sharp),
            label: 'Favorites'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More'
          ),
        ],
      ),
    );
  }
  
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}