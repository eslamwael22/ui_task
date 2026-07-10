import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/features/Home/data/most_order_data.dart';
import 'package:ui_screen/features/Home/widgets/most_order_item.dart';

class MostOrderSelection extends StatelessWidget {
  const MostOrderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MostOrderData.getItems(context).length,
        itemBuilder: (context, index) {
          return MostOrderItem(item: MostOrderData.getItems(context)[index]);
        },
      ),
    );
  }
}
