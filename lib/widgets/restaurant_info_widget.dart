import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_app/models/food_model.dart';

class RestaurantInfoWidget extends StatelessWidget {
  const RestaurantInfoWidget(
      {super.key, required this.food, this.isHomeScreen = false});
  final Food food;
  final bool isHomeScreen;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHomeScreen ? "Lorem" : "Main Course",
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color(0xFFE4B679),
                Color(0xFFFEE5C4),
              ],
            ).createShader(bounds),
            child: Text(
              isHomeScreen ? "CEANO" : food.name,
              style: TextStyle(
                fontSize: isHomeScreen ? 22.sp : 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            food.description ?? "No description available.",
            style: TextStyle(
              fontSize: isHomeScreen ? 10.sp : 11.sp,
              fontWeight: FontWeight.w500,
              color: isHomeScreen ? Colors.white70 : Colors.white,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
