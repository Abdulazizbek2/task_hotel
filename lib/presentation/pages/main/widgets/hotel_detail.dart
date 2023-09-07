import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_hotel/infrastructure/models/hotel_detail/hotel_info_model.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';
import 'image_page_view.dart';
import 'rating_witget.dart';

class HotelDetail extends StatefulWidget {
  final HotelInfoModel? hotelDetail;
  const HotelDetail({
    super.key,
    this.hotelDetail,
  });

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return Container(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
            color: colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            ImagePageBuilder(
                colors: colors,
                imageList: widget.hotelDetail?.imageUrls.toList() ?? []),

            RatingWidget(
              name: widget.hotelDetail?.ratingName,
              rating: widget.hotelDetail?.rating,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.hotelDetail?.name ?? "",
              style: GoogleFonts.roboto(
                color: colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: colors.blueText,
                  padding: EdgeInsets.zero,
                  textStyle: TextStyle(
                      wordSpacing: -2,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
                child: Text(
                  widget.hotelDetail?.adress ?? "",
                )),
            //descrioption
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 36.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${"from".tr()} ${moneyFormat.format(widget.hotelDetail?.minimalPrice ?? "")} ₽",
                    style:
                        TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Text(
                        widget.hotelDetail?.priceForIt ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: colors.lightGreyText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
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
