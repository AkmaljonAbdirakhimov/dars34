//? Bottom Navigation Bar
//? Sahifalar aro ma'lumot almashish
//? Container -> Image & Text (Responsive)
//? Shartli ravishda widgetlarni ko'rsatish
//? GestureDetector

import 'package:dars34/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        );
      },
    );
  }
}
