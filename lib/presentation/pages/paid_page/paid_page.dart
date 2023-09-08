import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_hotel/presentation/component/custom_button.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';

class PaidPage extends StatefulWidget {
  const PaidPage({Key? key}) : super(key: key);

  @override
  State<PaidPage> createState() => _PaidPageState();
}

class _PaidPageState extends State<PaidPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext ctx, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme _) {
        return Scaffold(
          backgroundColor: colors.white,
          appBar: AppBar(
            backgroundColor: colors.white,
            surfaceTintColor: colors.white,
            title: Text(
              "order_has_been_paid".tr(),
              style: TextStyle(
                  color: colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 23.w, right: 23.w),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Container(
                  height: 94.h,
                  width: 94.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colors.backgroundColor,
                      borderRadius: BorderRadius.circular(47.h)),
                  child: Text(
                    "\u{1F389}",
                    style: TextStyle(fontSize: 44.h),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "order_has_been_processed".tr(),
                  style: GoogleFonts.roboto(
                    color: colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "order_text".tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: colors.grey2Text,
                      wordSpacing: 0,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    icons.superPr,
                    matchTextDirection: true,
                    allowDrawingOutsideViewBox: true,
                    height: 44.h,
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            padding: EdgeInsets.only(
                top: 13.h, left: 16.w, right: 16.w, bottom: 28.h),
            decoration: BoxDecoration(
                color: colors.white,
                border: Border(
                    top: BorderSide(color: colors.dividerColor, width: 1.h))),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              title: "super".tr(),
              backgroundColor: colors.coursorColor,
            ),
          ),
        );
      },
    );
  }
}
