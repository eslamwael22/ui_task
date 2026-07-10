import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/core/constants/app_colors.dart';
import 'package:ui_screen/features/Home/widgets/home_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              'طنطا , منطقة الاستاد',
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(width: 130.w),
            Text(
              'تغيير',
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                /// Search Bar
                Expanded(child: SearchBar()),
                SizedBox(width: 12.w),

                /// Cart
                Container(
                  width: 110.w,
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: AppColors.searchBarBackgroundColor,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(Icons.shopping_cart_outlined, size: 28.sp),

                          Positioned(
                            top: -5,
                            right: -5,
                            child: Container(
                              width: 20.w,
                              height: 20.w,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFA726),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '50',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 6.w),

                      SizedBox(
                        height: 24.h,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(width: 6.w),

                      Text(
                        '300 ج',
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          HomeSlider(),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.only(left: 250.w),
            child: Text(
              'الاقسام',
              style: GoogleFonts.cairo(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
