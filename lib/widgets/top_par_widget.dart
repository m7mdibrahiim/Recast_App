import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_app/helper/exit_dialog.dart';
import 'package:recast_app/screens/profile_screen.dart';

class TopParWidget extends StatelessWidget {
  const TopParWidget({super.key, this.isHomeScreen = false});
  final bool isHomeScreen;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 50.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: BorderRadius.circular(25.r),
              border: Border.all(
                color: Colors.black.withOpacity(.4),
                width: 1.w,
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 18.sp,
              ),
              onPressed: () {
                if (isHomeScreen) {
                  showExitDialog(context);
                } else {
                  Navigator.pop(context);
                }

                // isHomeScreen
                //     ? () {
                //         showExitDialog(context);
                //       }
                //     : Navigator.pop(context);
              },
            ),
          ),
          isHomeScreen
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.4),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.black.withOpacity(.4),
                      width: 1.w,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ProfileScreen();
                          },
                        ),
                      );
                    },
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
