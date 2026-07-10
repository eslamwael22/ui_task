import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/features/Home/widgets/cart_widget.dart';
import 'package:ui_screen/features/Home/widgets/category_section.dart';
import 'package:ui_screen/features/Home/widgets/home_slider.dart';
import 'package:ui_screen/features/Home/widgets/search_bar_widget.dart';

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
                Expanded(child: HomeSearchBar()), //search bar
                SizedBox(width: 12.w),
                CartWidget(totalItems: 50, totalPrice: 300), // cart
              ],
            ),
          ),
          SizedBox(height: 15.h),
          HomeSlider(),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.only(left: 270.w),
            child: Text(
              'الاقسام',
              style: GoogleFonts.cairo(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          const CategorySection(),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 240.w),
            child: Text(
              'اعاده الطلب',
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
