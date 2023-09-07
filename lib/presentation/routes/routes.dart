import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_hotel/application/home/home_bloc.dart';
import 'package:task_hotel/presentation/pages/booking/booking.dart';
import 'package:task_hotel/presentation/pages/paid_page/paid_page.dart';
import '../../domain/auth/auth_failure.dart';
import '../pages/auth/auth_intro.dart';
import '../../infrastructure/services/db_service.dart';
import '../pages/rooms/rooms.dart';
import '../pages/core/app_widget.dart';
import '../pages/core/no_connection.dart';
import '../pages/main/main_page.dart';

class AppRoutes {
  static PageRoute getAppWidget(
    DBService dbService,
    bool connectivityResult,
  ) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          dbService: dbService,
          connectivityX: connectivityResult,
        ),
      );

  static MaterialPageRoute authIntro() {
    return MaterialPageRoute(builder: (_) => const AuthIntroPage());
  }

  static MaterialPageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  /// onGenerate
  static PageRoute onGenerateRoute({
    required BuildContext context,
    required AuthFailure? authFailure,
    required bool notConnection,
  }) {
    if (notConnection) {
      return getNetworkNotFound();
    } else if (authFailure == null) {
      return main();
    } else {
      return main();
    }
  }

  /// main
  static MaterialPageRoute main() => MaterialPageRoute(
        builder: (_) => const MainPage(),
      );

  // static MaterialPageRoute getHome() => MaterialPageRoute(
  //       builder: (_) => const HomePage(),
  //     );

  static MaterialPageRoute rooms(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<HomeBloc>(context)
            ..add(const HomeEvent.roomsDetail()),
          child: const RoomsPage(),
        ),
      );

  static MaterialPageRoute booking(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<HomeBloc>(context)
            ..add(const HomeEvent.bookingHotel()),
          child: const BookingPage(),
        ),
      );

  static MaterialPageRoute paidPage() => MaterialPageRoute(
        builder: (_) => const PaidPage(),
      );

  // static MaterialPageRoute getVideo() => MaterialPageRoute(
  //       builder: (_) => const VideoPage(),
  //     );
}
