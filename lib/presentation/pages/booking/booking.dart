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
    maxTourists = 5;
    touristLeng = 1;
    validateError = false;
    listControllers = List.generate(maxTourists,
        (index) => List.generate(6, (index) => TextEditingController()));
  }

  late int touristLeng;
  late int maxTourists;
  late List<List<TextEditingController>> listControllers;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController phoneController;
  final _mobileFormatter = InternationalPhoneFormatter();

  String totalPrice = "";
  late bool validateError;

  void payToHotel() {
    validateError = true;
    setState(() {});
    if (!emailController.text.isValidEmail() ||
        phoneController.text.length < 18) {
      return;
    }
    for (var i = 0; i < touristLeng; i++) {
      if (listControllers[i][0].text.length < 3 ||
          listControllers[i][1].text.length < 3 ||
          listControllers[i][2].text.length < 10 ||
          listControllers[i][3].text.length < 3 ||
          listControllers[i][4].text.length < 3 ||
          listControllers[i][5].text.length < 10) {
        return;
      }
    }
    if (formKey.currentState!.validate()) {
      Navigator.of(context).push(AppRoutes.paidPage());
    }
  }

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
                  "booking".tr(),
                  style: TextStyle(
                      color: colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
              ),
              body: Form(
                key: formKey,
                child: SingleChildScrollView(
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
                                CustomTextFieldInput(
                                  labelText: 'phoneNumber'.tr(),
                                  colors: colors,
                                  dateFormatter: [_mobileFormatter],
                                  validateError: validateError,
                                  controller: phoneController,
                                  lentEr: 18,
                                  keyboardType: TextInputType.phone,
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                CustomTextFieldInputForEmail(
                                  labelText: 'check_email'.tr(),
                                  colors: colors,
                                  validateError: validateError,
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
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
                          isShow: i == 0 ? true : false,
                          numberUser: i + 1,
                          colors: colors,
                          validateError: validateError,
                          nameController: listControllers[i][0],
                          surnameController: listControllers[i][1],
                          dateBirthController: listControllers[i][2],
                          citizenshipController: listControllers[i][3],
                          passportNumberController: listControllers[i][4],
                          passportValidityPeriodController: listControllers[i]
                              [5],
                        ),
                      touristLeng == maxTourists
                          ? const SizedBox()
                          : Container(
                              margin: EdgeInsets.only(bottom: 8.h),
                              padding: EdgeInsets.only(
                                  left: 16.w,
                                  right: 16.w,
                                  bottom: 6.h,
                                  top: 6.h),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.h),
                                  color: colors.white),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "add_touris".tr(),
                                          style: GoogleFonts.roboto(
                                            color: colors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              touristLeng++;
                                            });
                                          },
                                          icon: Container(
                                            height: 32.h,
                                            width: 32.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6.h),
                                                color: colors.blueText),
                                            child: Icon(
                                              Icons.add,
                                              color: colors.white,
                                            ),
                                          ),
                                          color: colors.black,
                                          iconSize: 24.sp,
                                        )
                                      ],
                                    ),
                                  ])),
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
                  onPressed: payToHotel,
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
