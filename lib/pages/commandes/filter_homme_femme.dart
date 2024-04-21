import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterHommeFemme extends StatelessWidget {
  final VoidCallback? ontap;
  final String text;
  final Color color;
  final Border? border;

  const FilterHommeFemme({
    Key? key,
    this.ontap,
    required this.text,
    required this.color,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        border: border,
      ),
      child: InkWell(
        onTap: ontap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
