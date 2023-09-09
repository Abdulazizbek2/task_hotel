import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';

String getDate(String? date) {
  var dateF = DateTime.parse(date ?? "2021-09-09T12:00:00.000000Z");
  var howTimeWas = DateTime.parse(date ?? "2021-09-09T12:00:00.000000Z")
      .difference(DateTime.now());
  if (dateF.year != DateTime.now().year) {
    return "${dateF.day} ${toMonth(dateF.month)} ${dateF.year}, ${dateF.hour}:${dateF.minute}";
  }
  if (howTimeWas.inDays * -1 > 10) {
    return "${dateF.day} ${toMonth(dateF.month)}, ${dateF.hour}:${dateF.minute}";
  }
  var formattedDate = howTimeWas.inDays * -1 > 1
      ? "${howTimeWas.inDays * -1} ${"prev_day".tr()}, ${dateF.hour}:${dateF.minute}"
      : howTimeWas.inHours * -1 > 0
          ? "${howTimeWas.inHours * -1} ${"prev_hour".tr()}"
          : howTimeWas.inMinutes * -1 > 0
              ? "${howTimeWas.inMinutes * -1} ${"prev_minute".tr()}"
              : "${howTimeWas.inSeconds * -1} ${"prev_second".tr()}";
  return formattedDate;
}

String toMonth(int i) {
  switch (i) {
    case 1:
      return "january".tr();
    case 2:
      return "february".tr();
    case 3:
      return "march".tr();
    case 4:
      return "april".tr();
    case 5:
      return "may".tr();
    case 6:
      return "june".tr();
    case 7:
      return "july".tr();
    case 8:
      return "august".tr();
    case 9:
      return "september".tr();
    case 10:
      return "october".tr();
    case 11:
      return "november".tr();
    case 12:
      return "december".tr();
    default:
      return "january".tr();
  }
}

// String getImageFullUrl(String? image) {
//   return image != null
//       // ? (baseUrlPlatina + image)
//       : "https://platina.uz/_ipx/w_820/https://cp.platina.uz//media/CACHE/images/cca37e89330ce7e2df3ddfbd726d7012-1024x682.0f14ed88d864.webp";
// }

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String? hexString) {
    final buffer = StringBuffer();
    if (hexString?.length == 6 || hexString?.length == 7) buffer.write('ff');
    buffer.write(hexString?.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

String? parseHtmlString(String? htmlString) {
  var document = parse(htmlString);
  String? parsedString = parse(document.body?.text).documentElement?.text;
  return parsedString;
}
