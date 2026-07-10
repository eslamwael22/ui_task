import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screen/core/widgets/section_header.dart';
import 'package:ui_screen/features/Home/widgets/cart_widget.dart';
import 'package:ui_screen/features/Home/widgets/category_section.dart';
import 'package:ui_screen/features/Home/widgets/home_slider.dart';
import 'package:ui_screen/features/Home/widgets/love_section.dart';
import 'package:ui_screen/features/Home/widgets/most_order_selection.dart';
import 'package:ui_screen/features/Home/widgets/reorder_section.dart';
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
            const Icon(Icons.location_on_outlined),

            Text(
              'طنطا , منطقة الاستاد',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

            const Spacer(),

            Text(
              'تغيير',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Search + Cart
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(child: HomeSearchBar()),

                  SizedBox(width: 12.w),

                  const CartWidget(totalItems: 50, totalPrice: 300),
                ],
              ),
            ),

            SizedBox(height: 15.h),

            /// Slider
            const HomeSlider(),

            SizedBox(height: 20.h),

            /// Categories
            const SectionHeader(title: 'الأقسام', showSeeAll: false),

            SizedBox(height: 10.h),

            const CategorySection(),

            SizedBox(height: 20.h),

            /// Reorder
            const SectionHeader(title: 'إعادة الطلب', showSeeAll: false),
            SizedBox(height: 10.h),
            const ReorderSection(),
            SizedBox(height: 20.h),
            const SectionHeader(title: 'الأكثر طلباً', showSeeAll: true),
            SizedBox(height: 10.h),
            const MostOrderSelection(),
            SizedBox(height: 20.h),
            const SectionHeader(title: 'قد يعجبك', showSeeAll: false),
            SizedBox(height: 10.h),
            LoveSection(),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
