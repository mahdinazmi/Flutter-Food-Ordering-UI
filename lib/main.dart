import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/routes.dart';
import 'screen/nav/nav.dart';
import 'screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key ? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Poppins', visualDensity: VisualDensity.adaptivePlatformDensity, brightness: Brightness.light),
            initialRoute: Nav.routeName,
            routes: routes,
          );
        }
    );
  }
}
