import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class dot extends StatelessWidget {
  const dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '•',
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }
}
