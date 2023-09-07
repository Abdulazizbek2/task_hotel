import 'package:alice/alice.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:task_hotel/domain/common/token_ext.dart';
import 'package:task_hotel/presentation/component/un_focus_widget.dart';
import 'package:provider/provider.dart';

import '../../../infrastructure/services/db_service.dart';
import '../../routes/routes.dart';
import '../../styles/theme.dart';

Alice alice = Alice(showNotification: true);

class AppWidget extends StatelessWidget {
  final DBService dbService;
  final bool connectivityX;

  const AppWidget({
    Key? key,
    required this.dbService,
    required this.connectivityX,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => GridTheme.create(dbService),
        builder: (BuildContext context, _) {
          return RepositoryProvider(
            create: (BuildContext context) => dbService,
            child: OnUnFocusTap(
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(useMaterial3: true),
                  // navigatorKey: alice.getNavigatorKey(),
                  builder: EasyLoading.init(),
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(
                        context: context,
                        authFailure: dbService.token.hasFailure,
                        notConnection: !connectivityX,
                      )),
            ),
          );
        });
  }
}
