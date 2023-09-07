import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final moneyFormat = NumberFormat("#,##0");
    return ThemeWrapper(
      builder: (BuildContext ctx, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme _) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: AppBar(
            // foregroundColor: colors.white,
            backgroundColor: colors.white,
            surfaceTintColor: colors.white,
            title: Text(
              "",
              style: TextStyle(
                  color: colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(12.h)),
                    color: colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "",
                      style: GoogleFonts.roboto(
                        color: colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "",
                      style: TextStyle(
                          color: colors.blueText,
                          wordSpacing: -2,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    //descrioption
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ],
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
              title: "to_room_selection".tr(),
              backgroundColor: colors.coursorColor,
            ),
          ),
        );
      },
    );
  }
}
