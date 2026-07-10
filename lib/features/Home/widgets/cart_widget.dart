import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/core/constants/app_colors.dart';

class CartWidget extends StatelessWidget {
  final int totalItems;
  final double totalPrice;
  const CartWidget({
    super.key,
    required this.totalItems,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: VerticalDivider(color: Colors.grey.shade400, thickness: 1),
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
    );
  }
}
