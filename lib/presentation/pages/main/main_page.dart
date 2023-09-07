import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_hotel/application/home/home_bloc.dart';
import 'package:task_hotel/infrastructure/apis/apis.dart';
import 'package:task_hotel/infrastructure/repositories/home_repo.dart';
import 'package:task_hotel/infrastructure/services/db_service.dart';
import 'package:task_hotel/presentation/component/custom_button.dart';
import 'package:task_hotel/presentation/routes/routes.dart';
import 'package:task_hotel/presentation/styles/theme.dart';
import 'package:task_hotel/presentation/styles/theme_wrapper.dart';

import 'widgets/hotel_detail.dart';
import 'widgets/info_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme _) {
        return BlocProvider(
            lazy: false,
            create: (context) => HomeBloc(HomeRepository(
                  context.read<DBService>(),
                  HotelService.create(),
                ))
                  ..add(const HomeEvent.hotelDetail()),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (contextBl, state) {
                return state.hotelInfoModel?.id == null
                    ? SizedBox(
                        height: 500.h,
                        width: 300.w,
                        child: const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      )
                    : Scaffold(
                        primary: true,
                        backgroundColor: colors.backgroundColor,
                        appBar: AppBar(
                          foregroundColor: colors.white,
                          backgroundColor: colors.white,
                          surfaceTintColor: colors.white,
                          automaticallyImplyLeading: false,
                          title: Text(
                            "hotel".tr(),
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
                              HotelDetail(
                                hotelDetail: state.hotelInfoModel,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              InfoWidget(
                                hotelDetail: state.hotelInfoModel,
                              ),
                              SizedBox(
                                height: 102.h,
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
                              Navigator.of(contextBl)
                                  .push(AppRoutes.rooms(contextBl));
                            },
                            title: "to_room_selection".tr(),
                            backgroundColor: colors.coursorColor,
                          ),
                        ),
                      );
              },
            ));
      },
    );
  }
}
