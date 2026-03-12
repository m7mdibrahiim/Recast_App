import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recast_app/providers/food_provider.dart';
import 'package:recast_app/widgets/atmosphere_widget.dart';
import 'package:recast_app/widgets/food_menu_widget.dart';
import 'package:recast_app/widgets/restaurant_info_widget.dart';
import 'package:recast_app/widgets/top_par_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = context.watch<FoodProvider>().foods;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 249.h,
                    // width: 256,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 47.h,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                  ),
                  const TopParWidget(
                    isHomeScreen: true,
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              RestaurantInfoWidget(
                food: foods[0],
                isHomeScreen: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              const AtmosphereWidget(),
              SizedBox(
                height: 20.h,
              ),
              const FoodMenuWidget(),
            ],
          ),
        ));
  }
}
