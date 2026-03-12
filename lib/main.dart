import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recast_app/providers/food_provider.dart';
import 'package:recast_app/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FoodProvider(),
      child: const RecastApp(),
    ),
  );
}

class RecastApp extends StatelessWidget {
  const RecastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(264, 572),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recast',
          theme: ThemeData(
            fontFamily: "Satoshi",
            primarySwatch: Colors.blue,
          ),
          home: const Scaffold(
            body: HomeScreen(),
          ),
        );
      },
    );
  }
}
