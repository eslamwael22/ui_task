import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 180.h,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.r)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.r),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(category.image, fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 8.h,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  category.title,
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
