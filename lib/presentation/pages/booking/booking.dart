import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_hotel/application/home/home_bloc.dart';
import 'package:task_hotel/presentation/component/custom_button.dart';
import 'package:task_hotel/presentation/pages/booking/widgets/input_formaters.dart';
import 'package:task_hotel/presentation/pages/booking/widgets/tablet_text_item.dart';
import 'package:task_hotel/presentation/pages/booking/widgets/user_input_data_widget.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';
import '../../routes/routes.dart';
import '../main/widgets/rating_witget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    touristLeng = 2;
    listControllers = List.generate(
        10, (index) => List.generate(6, (index) => TextEditingController()));
  }

  late int touristLeng;
  late List<List<TextEditingController>> listControllers;

  late TextEditingController emailController;
  late TextEditingController phoneController;
  final _mobileFormatter = InternationalPhoneFormatter();

  String totalPrice = "";

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return ThemeWrapper(
      builder: (BuildContext ctx, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme _) {
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            totalPrice =
                "${moneyFormat.format((state.bookingHotelModel?.serviceCharge ?? 0) + (state.bookingHotelModel?.fuelCharge ?? 0) + (state.bookingHotelModel?.tourPrice ?? 0))} ₽";
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, bottom: 3.h, top: 16.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.h),
                          color: colors.white),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingWidget(
                            name: state.bookingHotelModel?.ratingName,
                            rating: state.bookingHotelModel?.horating,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            state.bookingHotelModel?.hotelName ?? "",
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
                                state.bookingHotelModel?.hotelAdress ?? "",
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, bottom: 16.h, top: 16.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.h),
                          color: colors.white),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TableTextItem(
                            name: "departure".tr(),
                            value: state.bookingHotelModel?.departure ?? "",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "state".tr(),
                            value:
                                state.bookingHotelModel?.arrivalCountry ?? "",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "date".tr(),
                            value:
                                "${state.bookingHotelModel?.tourDateStart}-${state.bookingHotelModel?.tourDateStop}",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "number_of_nights".tr(),
                            value:
                                "${state.bookingHotelModel?.numberOfNights} ${"nights".tr()}",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "hotel".tr(),
                            value: state.bookingHotelModel?.hotelName ?? "",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "number".tr(),
                            value: state.bookingHotelModel?.room ?? "",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem(
                            name: "nutrition".tr(),
                            value: state.bookingHotelModel?.nutrition ?? "",
                            colors: colors,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 16.w, bottom: 3.h, top: 16.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.h),
                            color: colors.white),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "information".tr(),
                                style: GoogleFonts.roboto(
                                  color: colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.h),
                                    color: colors.greyTextField),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 0.h),
                                child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  autocorrect: false,
                                  // maxLength: 16,
                                  // showCursor: false,
                                  cursorColor: colors.black,

                                  inputFormatters: [
                                    _mobileFormatter,
                                  ],
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: GoogleFonts.roboto(
                                        color: colors.grey2Text),
                                    labelText: 'phoneNumber'.tr(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.h),
                                    color: colors.greyTextField),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 0.h),
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (input) => input!.isValidEmail()
                                      ? null
                                      : "check_email".tr(),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: GoogleFonts.roboto(
                                        color: colors.grey2Text),
                                    labelText: 'email'.tr(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "confidentInfo".tr(),
                                style: TextStyle(
                                    color: colors.grey2Text,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                            ])),
                    SizedBox(
                      height: 8.h,
                    ),
                    for (int i = 0; i < touristLeng; i++)
                      UserInputDataWidget(
                          numberUser: i + 1,
                          colors: colors,
                          nameController: listControllers[i][0],
                          surnameController: listControllers[i][1],
                          dateBirthController: listControllers[i][2],
                          citizenshipController: listControllers[i][3],
                          passportNumberController: listControllers[i][4],
                          passportValidityPeriodController: listControllers[i]
                              [5]),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, bottom: 16.h, top: 16.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.h),
                          color: colors.white),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TableTextItem2(
                            name: "tour".tr(),
                            value:
                                "${moneyFormat.format(state.bookingHotelModel?.tourPrice ?? 0)} ₽",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem2(
                            name: "fuel_surcharge".tr(),
                            value:
                                "${moneyFormat.format(state.bookingHotelModel?.fuelCharge ?? 0)} ₽",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem2(
                            name: "service_surcharge".tr(),
                            value:
                                "${moneyFormat.format(state.bookingHotelModel?.serviceCharge ?? 0)} ₽",
                            colors: colors,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TableTextItem2(
                            isTotal: true,
                            name: "total_p".tr(),
                            value: totalPrice,
                            colors: colors,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 106.h,
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
                        top: BorderSide(
                            color: colors.dividerColor, width: 1.h))),
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(AppRoutes.paidPage());
                  },
                  title: "pay".tr() + totalPrice,
                  backgroundColor: colors.coursorColor,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
