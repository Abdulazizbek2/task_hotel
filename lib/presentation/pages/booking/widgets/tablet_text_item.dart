import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/theme.dart';

class TableTextItem extends StatelessWidget {
  final String name;
  final String value;
  final CustomColorSet colors;
  const TableTextItem({
    super.key,
    required this.name,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 140.w,
          child: Text(
            name,
            style: GoogleFonts.roboto(
              color: colors.grey2Text,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
                color: colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class TableTextItem2 extends StatelessWidget {
  final String name;
  final String value;
  final CustomColorSet colors;
  final bool isTotal;
  const TableTextItem2({
    super.key,
    this.isTotal = false,
    required this.name,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: GoogleFonts.roboto(
            color: colors.grey2Text,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: TextStyle(
              color: isTotal ? colors.blueText : colors.black,
              fontSize: 14.sp,
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400),
        ),
      ],
    );
  }
}
