import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/theme.dart';
import 'input_formaters.dart';

class UserInputDataWidget extends StatefulWidget {
  const UserInputDataWidget({
    super.key,
    required this.isShow,
    required this.validateError,
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
  final bool validateError;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController dateBirthController;
  final TextEditingController citizenshipController;
  final TextEditingController passportNumberController;
  final TextEditingController passportValidityPeriodController;
  final CustomColorSet colors;
  final bool isShow;

  @override
  State<UserInputDataWidget> createState() => _UserInputDataWidgetState();
}

class _UserInputDataWidgetState extends State<UserInputDataWidget> {
  late bool showAll;
  @override
  void initState() {
    showAll = widget.isShow;
    super.initState();
  }

  final _dateFormatter = DateInputFormater();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 8.h),
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, bottom: 6.h, top: 6.h),
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
                    padding: EdgeInsets.zero,
                    splashRadius: 16.h,
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
                        CustomTextFieldInput(
                          labelText: 'name'.tr(),
                          colors: widget.colors,
                          validateError: widget.validateError,
                          controller: widget.nameController,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFieldInput(
                          labelText: 'surname'.tr(),
                          colors: widget.colors,
                          validateError: widget.validateError,
                          controller: widget.surnameController,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFieldInput(
                          labelText: 'date_birth'.tr(),
                          colors: widget.colors,
                          dateFormatter: [_dateFormatter],
                          validateError: widget.validateError,
                          controller: widget.dateBirthController,
                          lentEr: 10,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFieldInput(
                          labelText: 'citizenship'.tr(),
                          colors: widget.colors,
                          validateError: widget.validateError,
                          controller: widget.citizenshipController,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFieldInput(
                          labelText: 'passport_number'.tr(),
                          colors: widget.colors,
                          validateError: widget.validateError,
                          controller: widget.passportNumberController,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFieldInput(
                          labelText: 'passport_validity_period'.tr(),
                          colors: widget.colors,
                          dateFormatter: [_dateFormatter],
                          validateError: widget.validateError,
                          controller: widget.passportValidityPeriodController,
                          lentEr: 10,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                      ],
                    ),
            ]));
  }
}

class CustomTextFieldInput extends StatelessWidget {
  const CustomTextFieldInput({
    super.key,
    required this.colors,
    this.dateFormatter,
    required this.controller,
    required this.validateError,
    required this.labelText,
    this.lentEr = 3,
    this.keyboardType,
  });
  final CustomColorSet colors;
  final bool validateError;
  final TextEditingController controller;
  final List<TextInputFormatter>? dateFormatter;
  final String labelText;
  final int lentEr;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          color: validateError && controller.text.length < lentEr
              ? colors.red.withOpacity(0.15)
              : colors.greyTextField),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      child: TextFormField(
        inputFormatters: dateFormatter,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: colors.black,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelStyle: GoogleFonts.roboto(color: colors.grey2Text),
            labelText: labelText,
            errorMaxLines: 1),
      ),
    );
  }
}

class CustomTextFieldInputForEmail extends StatelessWidget {
  const CustomTextFieldInputForEmail({
    super.key,
    required this.colors,
    this.dateFormatter,
    required this.controller,
    required this.validateError,
    required this.labelText,
    this.lentEr = 3,
    this.keyboardType,
  });

  final CustomColorSet colors;
  final bool validateError;
  final TextEditingController controller;
  final List<TextInputFormatter>? dateFormatter;
  final String labelText;
  final int lentEr;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          color: (validateError && !controller.text.isValidEmail())
              ? colors.red.withOpacity(0.15)
              : colors.greyTextField),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      child: TextFormField(
        inputFormatters: dateFormatter,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: colors.black,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelStyle: GoogleFonts.roboto(color: colors.grey2Text),
            labelText: labelText,
            errorMaxLines: 1),
      ),
    );
  }
}
