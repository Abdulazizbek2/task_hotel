part of 'theme.dart';

class CustomColorSet {
  final Color text;
  final Color black;
  final Color blackText2;
  final Color bodyText;
  final Color redText;

  final Color subText;

  final Color checkColor;
  final Color lightBlack;

  final Color primary;
  final Color greenText;
  final Color inkText;
  final Color blueText;
  final Color orangeText;
  final Color darkGreenText;
  final Color lightRedText;
  final Color darkInkText;
  final Color lightBlueText;
  final Color lightGreyText;
  final Color grey2Text;

  final Color white;
  final Color blue;
  final Color darkBlue;
  final Color icon;
  final Color dark;
  final Color grey;
  final Color lightGrey;
  final Color greyTextField;
  final Color backgroundColor;

  final Color backgroundColorVariant;

  final Color secondary;

  final Color lightTextBody;

  final Color error;

  final Color transparent;

  final Color secondaryVariant;

  final Color calendarSelect;

  final Color firstColor;

  final Color coursorColor;

  final Color linkText;
  final Color borderColor;
  final Color iconSelect;
  final Color darkbluePr;
  final Color requestedColor;
  final Color confirmed;
  final Color input;
  final Color softColor;
  final Color dividerColor;
  final Color red;

  CustomColorSet._({
    required this.greyTextField,
    required this.blackText2,
    required this.black,
    required this.red,
    required this.lightGreyText,
    required this.grey2Text,
    required this.greenText,
    required this.inkText,
    required this.blueText,
    required this.orangeText,
    required this.darkGreenText,
    required this.lightRedText,
    required this.darkInkText,
    required this.lightBlueText,
    required this.darkBlue,
    required this.calendarSelect,
    required this.redText,
    required this.firstColor,
    required this.blue,
    required this.lightGrey,
    required this.checkColor,
    required this.lightBlack,
    required this.coursorColor,
    required this.borderColor,
    required this.linkText,
    required this.dark,
    required this.secondaryVariant,
    required this.text,
    required this.iconSelect,
    required this.bodyText,
    required this.subText,
    required this.primary,
    required this.white,
    required this.icon,
    required this.grey,
    required this.backgroundColor,
    required this.backgroundColorVariant,
    required this.secondary,
    required this.lightTextBody,
    required this.error,
    required this.transparent,
    required this.darkbluePr,
    required this.confirmed,
    required this.requestedColor,
    required this.input,
    required this.softColor,
    required this.dividerColor,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final text = isLight ? Style.text : Style.white;

    final bodyText = isLight ? Style.bodyText : Style.white;

    final subText = isLight ? Style.subText : Style.lightTextBody;

    final primary = isLight ? Style.white : Style.primary;

    const white = Style.white;

    const icon = Style.icon;

    final grey = isLight ? Style.grey : Style.lightGrey;

    const backgroundColor = Style.backgroundColor;

    final backgroundColorVariant = isLight ? Style.white : Style.text;

    const secondary = Style.secondary;

    final lightTextBody = isLight ? Style.lightTextBody : Style.text;

    const error = Style.error;

    //TEXT COLORS
    const greenText = Style.greenText;
    const inkText = Style.inkText;
    const blueText = Style.blueText;
    const orangeText = Style.orangeText;
    const darkGreenText = Style.darkGreenText;
    const lightRedText = Style.lightRedText;
    const darkInkText = Style.darkInkText;
    const lightBlueText = Style.lightBlueText;
    const lightGreyText = Style.lightGreyText;
    const grey2Text = Style.grey2Text;

    const transparent = Style.transparent;

    const secondaryVariant = Style.secondaryVariant;

    const linkText = Style.linkText;

    const calendarSelect = Style.secondary;

    const coursorColor = Style.coursorColor;
    const blue = Style.blue;
    const darkBlue = Style.darkBlue;
    const firstColor = Style.firstColor;
    const borderColor = Style.borderColor;
    const iconSelect = Style.iconSelect;
    const checkColor = Style.checkColor;
    const redText = Style.redText;
    const lightGrey = Style.lightGrey2;
    const dark = Style.dark;
    const lightBlack = Style.lightBlack;
    const blueTextPr = Style.primary;
    const requestedColor = Style.requested;
    const confirmed = Style.confirmed;
    const input = Style.input;
    const softColor = Style.softColor;
    const dividerColor = Style.dividerColor;
    const red = Style.red;
    const black = Style.black;
    const blackText2 = Style.blackText2;
    const greyTextField = Style.greyTextField;

    return CustomColorSet._(
        greyTextField: greyTextField,
        blackText2: blackText2,
        black: black,
        red: red,
        lightGreyText: lightGreyText,
        grey2Text: grey2Text,
        greenText: greenText,
        inkText: inkText,
        blueText: blueText,
        orangeText: orangeText,
        darkGreenText: darkGreenText,
        lightRedText: lightRedText,
        darkInkText: darkInkText,
        lightBlueText: lightBlueText,
        darkBlue: darkBlue,
        text: text,
        borderColor: borderColor,
        bodyText: bodyText,
        checkColor: checkColor,
        lightBlack: lightBlack,
        iconSelect: iconSelect,
        subText: subText,
        primary: primary,
        white: white,
        redText: redText,
        icon: icon,
        grey: grey,
        lightGrey: lightGrey,
        backgroundColor: backgroundColor,
        backgroundColorVariant: backgroundColorVariant,
        secondary: secondary,
        lightTextBody: lightTextBody,
        error: error,
        transparent: transparent,
        secondaryVariant: secondaryVariant,
        linkText: linkText,
        calendarSelect: calendarSelect,
        coursorColor: coursorColor,
        firstColor: firstColor,
        blue: blue,
        dark: dark,
        darkbluePr: blueTextPr,
        confirmed: confirmed,
        requestedColor: requestedColor,
        input: input,
        softColor: softColor,
        dividerColor: dividerColor);
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
