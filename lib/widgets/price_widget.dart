import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_app/models/food_model.dart';
import 'package:recast_app/screens/cart_screen.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key, required this.food});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [
                        Color(0xFFE4B679),
                        Color(0xFFFEE5C4),
                      ],
                    ).createShader(bounds),
                    child: Text(
                      "${food.price} JD",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Text(
                    "+ tax & service",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color.fromARGB(255, 153, 152, 152),
                      fontWeight: FontWeight.w700,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 45.h,
                width: 120.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE4B679),
                      Color(0xFFFEE5C4),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23.r),
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add To Order",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.2),
                          borderRadius: BorderRadius.circular(18.r),
                          border: Border.all(
                            width: 0.5.w,
                            color: Colors.black.withOpacity(.2),
                          ),
                        ),
                        // backgroundColor: Colors.black.withOpacity(.2),
                        // radius: 18.r,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
