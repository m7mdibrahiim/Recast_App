import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recast_app/providers/food_provider.dart';
import 'package:recast_app/widgets/food_card_widget.dart';

class FoodMenuWidget extends StatelessWidget {
  const FoodMenuWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final foods = context.watch<FoodProvider>().foods;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Food Menu",
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 94.h,
                      child: FoodCard(food: foods[0]),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 141.h,
                      child: FoodCard(food: foods[2]),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 127.h,
                      child: FoodCard(food: foods[1]),
                    ),
                    SizedBox(height: 6.h),
                    SizedBox(
                      height: 118.h,
                      child: FoodCard(food: foods[3]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
