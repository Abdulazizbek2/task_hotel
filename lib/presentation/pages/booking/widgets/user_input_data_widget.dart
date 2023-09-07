import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/theme.dart';
import 'input_formaters.dart';

class UserInputDataWidget extends StatefulWidget {
  const UserInputDataWidget({
    super.key,
    required this.nameController,
    required this.surnameController,
    required this.dateBirthController,
    required this.citizenshipController,
    required this.passportNumberController,
    required this.passportValidityPeriodController,
    required this.colors,
    required this.numberUser,
  });
  final int numberUser;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController dateBirthController;
  final TextEditingController citizenshipController;
  final TextEditingController passportNumberController;

  final TextEditingController passportValidityPeriodController;
  final CustomColorSet colors;

  @override
  State<UserInputDataWidget> createState() => _UserInputDataWidgetState();
}

class _UserInputDataWidgetState extends State<UserInputDataWidget> {
  late bool showAll;
  @override
  void initState() {
    showAll = true;
    super.initState();
  }

  final _dateFormatter = DateInputFormater();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 8.h),
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, bottom: 3.h, top: 16.h),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.h),
            color: widget.colors.white),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.numberUser}_touris".tr(),
                    style: GoogleFonts.roboto(
                      color: widget.colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showAll = !showAll;
                      });
                    },
                    icon: Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          color: widget.colors.blueText.withOpacity(0.1)),
                      child: Icon(
                        showAll
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: widget.colors.blueText,
                      ),
                    ),
                    color: widget.colors.black,
                    iconSize: 24.sp,
                  )
                ],
              ),
              !showAll
                  ? const SizedBox()
                  : Column(
                      children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            controller: widget.nameController,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'name'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            controller: widget.surnameController,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'surname'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            controller: widget.dateBirthController,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'date_birth'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            controller: widget.citizenshipController,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'citizenship'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            controller: widget.passportNumberController,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'passport_number'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              color: widget.colors.greyTextField),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 0.h),
                          child: TextFormField(
                            inputFormatters: [_dateFormatter],
                            controller: widget.passportValidityPeriodController,
                            keyboardType: TextInputType.number,
                            cursorColor: widget.colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelStyle: GoogleFonts.roboto(
                                  color: widget.colors.grey2Text),
                              labelText: 'passport_validity_period'.tr(),
                            ),
                          ),
                        ),
                      ],
                    ),
              SizedBox(
                height: 16.h,
              ),
            ]));
  }
}
