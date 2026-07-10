import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/features/Home/data/reorder_data.dart';
import 'package:ui_screen/features/Home/widgets/reorder_item.dart';

class ReorderSection extends StatelessWidget {
  const ReorderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ReorderData.getItems(context).length,
        itemBuilder: (context, index) {
          return ReorderItem(reorder: ReorderData.getItems(context)[index]);
        },
      ),
    );
  }
}
