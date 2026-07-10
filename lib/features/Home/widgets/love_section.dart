import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/features/Home/data/love_data.dart';
import 'package:ui_screen/features/Home/widgets/love_item.dart';

class LoveSection extends StatelessWidget {
  const LoveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MayLoveData.items.length,
        itemBuilder: (context, index) {
          return LoveItem(item: MayLoveData.items[index]);
        },
      ),
    );
  }
}
