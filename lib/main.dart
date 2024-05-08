import 'package:flutter/material.dart';
import 'package:flutter_day_10/ui/mobile/mobile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      // designSize: MediaQuery.of(context).size.width > 768
      //     ? const Size(1440, 900)
      //     : const Size(372, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Mobile(),
      ),
    );
  }
}
