import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/features/Home/models/reorder_model.dart';

class ReorderItem extends StatelessWidget {
  final ReorderModel reorder;

  const ReorderItem({super.key, required this.reorder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Container(
        width: 200.w,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    reorder.image,
                    width: 40.w,
                    height: 40.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reorder.title,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.cairo(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Text(
                        reorder.description,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.cairo(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh_outlined, color: Colors.teal, size: 22.sp),
                  SizedBox(width: 5.w),
                  Text(
                    'إعادة الطلب',
                    style: GoogleFonts.cairo(
                      color: Colors.teal,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
