import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/category_data.dart';
import 'category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
        scrollDirection: Axis.horizontal,
        itemCount: CategoryData.categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: CategoryData.categories[index]);
        },
      ),
    );
  }
}
