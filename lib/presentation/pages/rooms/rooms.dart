import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_hotel/application/home/home_bloc.dart';
import 'package:task_hotel/presentation/component/custom_button.dart';
import 'package:task_hotel/presentation/routes/routes.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';
import '../main/widgets/image_page_view.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
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
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: colors.backgroundColor,
              appBar: AppBar(
                // foregroundColor: colors.white,
                backgroundColor: colors.white,
                surfaceTintColor: colors.white,
                title: Text(
                  state.hotelInfoModel?.name ?? "",
                  style: TextStyle(
                      color: colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
                centerTitle: true,
              ),
              body: SizedBox(
                  child: ListView.builder(
                      itemCount: state.roomsInfoModel?.rooms.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 8.h),
                          padding: EdgeInsets.only(
                              left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(12.h)),
                              color: colors.white),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Image
                              ImagePageBuilder(
                                  colors: colors,
                                  imageList: state.roomsInfoModel?.rooms[index]
                                          .imageUrls
                                          .toList() ??
                                      []),

                              Text(
                                state.roomsInfoModel?.rooms[index].name ?? "",
                                style: GoogleFonts.roboto(
                                  color: colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Wrap(
                                spacing: 8.w,
                                runSpacing: 8.h,
                                children: [
                                  for (int i = 0;
                                      i <
                                          (state.roomsInfoModel?.rooms[index]
                                                  .peculiarities.length ??
                                              0);
                                      i++)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 5.h),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.h),
                                          color: colors.lightGrey),
                                      child: Text(
                                        state.roomsInfoModel?.rooms[index]
                                                .peculiarities[i] ??
                                            "",
                                        style: GoogleFonts.roboto(
                                            color: colors.grey2Text,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 5.h),
                                height: 29.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.h),
                                    color: colors.blue.withOpacity(0.2)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "more_about_the_room".tr(),
                                      style: fonts.bodyText1.copyWith(
                                          color: colors.darkBlue,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: colors.darkBlue,
                                      size: 15.w,
                                    ),
                                  ],
                                ),
                              ),
                              //descrioption
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                height: 36.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${moneyFormat.format(state.roomsInfoModel?.rooms[index].price ?? "")} ₽",
                                      style: TextStyle(
                                          fontSize: 28.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 8.h),
                                        child: Text(
                                          state.roomsInfoModel?.rooms[index]
                                                  .pricePer ??
                                              "",
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
                              Container(
                                padding: EdgeInsets.only(
                                  top: 13.h,
                                ),
                                child: CustomButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(AppRoutes.booking(context));
                                  },
                                  title: "select_room".tr(),
                                  backgroundColor: colors.coursorColor,
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
              bottomSheet: Container(
                height: 34.h,
                decoration: BoxDecoration(
                    color: colors.white,
                    border: Border(
                        top: BorderSide(
                            color: colors.dividerColor, width: 1.h))),
              ),
            );
          },
        );
      },
    );
  }
}
