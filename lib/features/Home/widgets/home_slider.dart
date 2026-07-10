import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/features/Home/data/slider_data.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: HomeSliderData.banners.map((image) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(image, width: 350.w, fit: BoxFit.cover),
            );
          }).toList(),
          options: CarouselOptions(
            height: 160.h,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),

        SizedBox(height: 10.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            HomeSliderData.banners.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              width: currentIndex == index ? 15.w : 5.w,
              height: 7.h,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? const Color(0xFF007A7B)
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
