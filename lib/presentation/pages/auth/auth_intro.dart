import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/theme.dart';
import '../../styles/theme_wrapper.dart';

class AuthIntroPage extends StatelessWidget {
  const AuthIntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme controller) {
        return Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            actions: [
              IconButton(
                  onPressed: () {
                    controller.toggle();
                  },
                  icon: const Icon(Icons.change_circle))
            ],
          ),
          body: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Container(
                color: colors.primary,
                alignment: Alignment.center,
                child: Text(
                  'Auth',
                  style: fonts.headline1.copyWith(color: colors.text),
                )),
          ),
        );
      },
    );
  }
}
