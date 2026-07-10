import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/most_order_model.dart';

class MostOrderItem extends StatelessWidget {
  final MostOrderModel item;

  const MostOrderItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.w,
      margin: EdgeInsets.only(left: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
            child: Image.asset(
              item.image,
              height: 120.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                  style: GoogleFonts.cairo(color: Colors.grey, fontSize: 15.sp),
                ),

                SizedBox(height: 10.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.grey,
                          size: 18.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(item.rate),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.grey,
                          size: 18.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(item.deliveryCost),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 18.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(item.time),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
