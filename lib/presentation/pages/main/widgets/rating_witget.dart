import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';

import '../../../styles/theme.dart';

class RatingWidget extends StatelessWidget {
  final String? name;
  final int? rating;
  const RatingWidget({super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme controller) {
      final color = (rating ?? 0) > 4
          ? colors.orangeText
          : (rating ?? 0) > 3
              ? colors.greenText
              : colors.red;

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        height: 29.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.h),
            color: color.withOpacity(0.2)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: color,
              size: 15.w,
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "$rating $name ",
              style: fonts.bodyText2.copyWith(color: color, fontSize: 12.sp),
            )
          ],
        ),
      );
    });
  }
}
