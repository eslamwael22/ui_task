import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/features/Home/widgets/dot.dart';

import '../models/most_order_model.dart';

class MostOrderItem extends StatelessWidget {
  final MostOrderModel item;

  const MostOrderItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 240.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
              child: Image.asset(
                item.image,
                height: 110.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: GoogleFonts.cairo(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    item.description,
                    style: GoogleFonts.cairo(
                      color: Colors.grey,
                      fontSize: 15.sp,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.grey,
                            size: 18.sp,
                          ),
                          SizedBox(width: 4.w),
                          Text(item.time, style: GoogleFonts.cairo()),
                        ],
                      ),
                      dot(),
                      Row(
                        children: [
                          Icon(
                            Icons.delivery_dining,
                            color: Colors.grey,
                            size: 18.sp,
                          ),
                          SizedBox(width: 4.w),
                          Text(item.deliveryCost, style: GoogleFonts.cairo()),
                        ],
                      ),
                      dot(),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 18.sp,
                          ),
                          SizedBox(width: 4.w),
                          Text(item.rate, style: GoogleFonts.cairo()),
                        ],
                      ),
                    ],
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
