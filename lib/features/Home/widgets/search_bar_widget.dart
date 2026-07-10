import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/core/constants/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: AppColors.searchBarBackgroundColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 8.w),
          const Icon(Icons.search),
          SizedBox(width: 8.w),
          Text(
            'ابحث عن وجبة او مطعم',
            style: GoogleFonts.cairo(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
