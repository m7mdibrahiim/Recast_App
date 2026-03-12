import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_app/models/food_model.dart';
import 'package:recast_app/widgets/preparation_widget.dart';
import 'package:recast_app/widgets/price_widget.dart';
import 'package:recast_app/widgets/restaurant_info_widget.dart';
import 'package:recast_app/widgets/top_par_widget.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key, required this.food});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 249.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(food.image),
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
                const TopParWidget(),
              ],
            ),
            SizedBox(
              height: 0.h,
            ),
            RestaurantInfoWidget(
              food: food,
            ),
            SizedBox(
              height: 12.h,
            ),
            const PreparationWidget(),
            SizedBox(
              height: 22.h,
            ),
            PriceWidget(
              food: food,
            ),
          ],
        ),
      ),
    );
  }
}
