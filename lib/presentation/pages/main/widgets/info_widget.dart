import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/hotel_detail/hotel_info_model.dart';

class InfoWidget extends StatefulWidget {
  final HotelInfoModel? hotelDetail;
  const InfoWidget({super.key, required this.hotelDetail});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return Container(
        padding:
            EdgeInsets.only(left: 16.w, bottom: 16.h, top: 16.h, right: 16.w),
        width: double.infinity,
        // height: 900.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.h), color: colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "about_hotel".tr(),
              style: GoogleFonts.roboto(
                  color: colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16.h,
            ),
            //HeadNews
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: [
                for (int i = 0;
                    i <
                        (widget.hotelDetail?.aboutTheHotel.peculiarities
                                .length ??
                            0);
                    i++)
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: colors.lightGrey),
                    child: Text(
                      widget.hotelDetail?.aboutTheHotel.peculiarities[i] ?? "",
                      style: GoogleFonts.roboto(
                          color: colors.grey2Text,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
              ],
            ),

            SizedBox(
              height: 12.h,
            ),
            Text(
              widget.hotelDetail?.aboutTheHotel.description ?? "",
              style: GoogleFonts.roboto(
                  color: colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h, left: 5.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.h),
                  color: colors.lightGrey),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(
                      icons.smileIcon,
                      height: 24.h,
                    ),
                    title: Text(
                      "facilities".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.blackText2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "essentials".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.grey2Text,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 52.w, right: 19.w),
                    child: Divider(
                      height: 1,
                      color: colors.dividerColor,
                      thickness: 1,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(
                      icons.completeIcon,
                      height: 24.h,
                    ),
                    title: Text(
                      "what_is_included".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.blackText2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "essentials".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.grey2Text,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 52.w, right: 19.w),
                    child: Divider(
                      height: 1,
                      color: colors.dividerColor,
                      thickness: 1,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(
                      icons.cancelIcon,
                      height: 24.h,
                    ),
                    title: Text(
                      "what_is_not_included".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.blackText2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "essentials".tr(),
                      style: GoogleFonts.roboto(
                          color: colors.grey2Text,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
