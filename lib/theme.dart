import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 1. Define the base style logic directly
const _baseStyle = TextStyle(
  fontFamily: 'IDT Sans',
  package: 'singit_package',
  color: Color(0xFF2A2825), // onPrimary
);

final theme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  
  cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
    primaryColor: Color(0xFF036C90),
  ),
  
  dividerTheme: const DividerThemeData(
    color: Color(0xFFE1E0DF),
  ),

  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFF6F5F4),
    onPrimary: Color(0xFF2A2825),
    secondary: Color(0xFF036C90),
    secondaryContainer: Color(0xFF2B657D),
    onSecondary: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF2A2825),
    background: Color(0xFFF2F2F6),
    onBackground: Color(0xFF979797),
    error: Color(0xFFEA1D1D),
    onError: Color(0xFFFFFFFF),
  ),

  appBarTheme: AppBarTheme(
    titleTextStyle: _baseStyle.copyWith(
      fontSize: KSize.fontSizeL,
      fontWeight: KSize.fontWeightRegular,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Color(0xFFFFFFFF),
    ),
  ),

  // 2. Map custom textStyles directly to the standard TextTheme
  textTheme: TextTheme(
    displayLarge: _baseStyle.copyWith(
      fontSize: KSize.fontSize3XL,
      fontWeight: KSize.fontWeightBold,
    ),
    displayMedium: _baseStyle.copyWith(
      fontSize: KSize.fontSizeXL,
      fontWeight: KSize.fontWeightMedium,
    ),
    displaySmall: _baseStyle.copyWith(
      fontSize: KSize.fontSizeXL,
      fontWeight: KSize.fontWeightRegular,
    ),
    headlineMedium: _baseStyle.copyWith(
      fontSize: KSize.fontSizeL,
      fontWeight: KSize.fontWeightMedium,
    ),
    headlineSmall: _baseStyle.copyWith(
      fontSize: KSize.fontSizeS,
      fontWeight: KSize.fontWeightMedium,
    ),
    titleLarge: _baseStyle.copyWith(
      fontSize: KSize.fontSizeM,
      fontWeight: KSize.fontWeightMedium,
    ),
    titleMedium: _baseStyle.copyWith(
      fontSize: KSize.fontSizeXS,
      fontWeight: KSize.fontWeightRegular,
    ),
    bodyLarge: _baseStyle.copyWith(
      fontSize: KSize.fontSizeM,
      fontWeight: KSize.fontWeightRegular,
    ),
    bodyMedium: _baseStyle.copyWith(
      fontSize: KSize.fontSizeS,
      fontWeight: KSize.fontWeightMedium,
    ),
    bodySmall: _baseStyle.copyWith(
      fontSize: KSize.fontSize2XS,
      fontWeight: KSize.fontWeightRegular,
    ),
    labelLarge: _baseStyle.copyWith(
      fontSize: KSize.fontSizeS,
      fontWeight: KSize.fontWeightMedium,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    hintStyle: _baseStyle.copyWith(
      fontSize: KSize.fontSizeS,
      fontWeight: KSize.fontWeightRegular,
      color: const Color(0xFF979797),
    ),
  ),

  dialogTheme: DialogThemeData(
    contentTextStyle: _baseStyle.copyWith(
      fontSize: KSize.fontSizeM,
      fontWeight: KSize.fontWeightRegular,
    ),
    titleTextStyle: _baseStyle.copyWith(
      fontSize: KSize.fontSizeL,
      fontWeight: KSize.fontWeightMedium,
    ),
    barrierColor: const Color(0xFF000000).withOpacity(0.7), 
    backgroundColor: const Color(0xFFFFFFFF),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(KSize.radiusLargeExtra)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color(0xFF2B657D),
      textStyle: _baseStyle.copyWith(
        fontSize: KSize.fontSizeS,
        fontWeight: KSize.fontWeightMedium,
      ),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF2A2825),
    ),
  ),

  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xFF2A2825),
    selectionColor: Color(0xFFE1E0DF),
    selectionHandleColor: Color(0xFF2A2825),
  ),

  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);


/// Constants for margins, font sizes and other layout related parameters.
class KSize {
  /// Margins are based roughly on a 4x4 grid.
  static const double marginMinimum = 1;
  static const double marginHalf = 2;
  static const double marginThreeQuarters = 3;
  static const double margin1x = 4;
  static const double margin1Halfx = 6;
  static const double margin1xHalf2 = 7;

  /// Space, size 8dp, See also [Gap.verticalMaterialHalf] or [Gap.horizontalMaterialHalf]
  static const double margin2x = 8;
  static const double margin2Halfx = 10;

  /// Space, size 12dp, See also [Gap.verticalMaterialSmall] or [Gap.horizontalMaterialSmall]
  static const double margin3x = 12;
  static const double margin3Halfx = 14;

  /// Space, size 16dp, See also [MaterialPadding.all], [Gap.verticalMaterial] or [Gap.horizontalMaterial]
  static const double margin4x = 16;
  static const double margin4point5x = 18;
  static const double margin4x19 = 19;

  /// Space, size 20dp
  static const double margin5x = 20.0;
  static const double margin5xHalf = 22.0;
  static const double margin6x = 24.0;
  static const double margin6xHalf = 26.0;
  static const double margin7x = 28.0;
  static const double margin7xHalf = 30.0;
  static const double margin8x = 32.0;
  static const double margin9x = 36.0;
  static const double margin9point5x = 38.0;
  static const double margin10x = 40.0;
  static const double margin10point5x = 42.0;
  static const double margin11x = 44.0;
  static const double margin12x = 48.0;
  static const double margin13x = 50.0;
  static const double margin14x = 54.0;
  static const double margin15x = 60.0;
  static const double margin16x = 64.0;
  static const double margin17x = 74.0;
  static const double margin18x = 82.0;
  static const double margin19x = 76.0;
  static const double margin20x = 90.0;
  static const double margin23x = 92.0;
  static const double margin25x = 100.0;
  static const double margin32x = 128.0;
  static const double margin33x = 132.0;
  static const double margin34x = 136.0;
  static const double margin35x = 140.0;
  static const double margin35xHalf = 160.0;
  static const double margin36x = 180.0;
  static const double margin50x = 200.0;

  static const double radiusSmallExtra = 2;
  static const double radiusSmall = 4;
  static const double radiusDefault = 8;
  static const double radiusDefaultSmall = 10;
  static const double radiusDefaultMedium = 12;
  static const double radiusDefaultLarge = 14;
  static const double radiusMedium = 16;
  static const double radiusLarge = 20;
  static const double radiusL = 24;
  static const double radiusLargeMedium = 27;
  static const double radiusLargeExtra = 32;
  static const double radius2XL = 40;
  static const double radiusLargeExtraExtra = 50;
  static const double radius3XL = 60;
  static const double radiusOfRoundButton = 100;
  static const double radiusAppBar = 70;

  static const double borderWidthMinimum = 0.5;
  static const double borderWidthVerySmall = 1;
  static const double borderWidthSmallHalf = 1.5;
  static const double borderWidthSmall = 2;
  static const double borderWidthMedium = 3;

  static const double fontSize5XS = 9;
  static const double fontSize4XS = 10;
  static const double fontSize3XS = 11;
  static const double fontSize2XS = 12;
  static const double fontSize2XSHalf = 13;
  static const double fontSizeXS = 14;
  static const double fontSizeXSHalf = 15;
  static const double fontSizeS = 16;
  static const double fontSizeM = 18;
  static const double fontSizeML = 19;
  static const double fontSizeL = 20;
  static const double fontSizeXL = 22;
  static const double fontSize2XL = 24;
  static const double fontSize3XL = 30;
  static const double fontSize3XLHalf = 32;
  static const double br6fontSize4XLHalf = 36;
  static const double fontSize4XLHalf = 37;
  static const double fontSize4XL = 42;

  static const double avatar5XS = 8;
  static const double avatar4XS = 12;
  static const double avatar3XS = 15;
  static const double avatar3XSHalf = 16;
  static const double avatar2XSHalf = 17;
  static const double avatar2S = 20;
  static const double avatar2XS = 21;
  static const double avatar2SHalf = 24;
  static const double avatarXS = 30;
  static const double avatarXSHalf = 32;
  static const double avatarS = 40;
  static const double avatarSHalf = 43;
  static const double avatarDefault = 44;
  static const double avatarM = 50;
  static const double avatarL = 60;
  static const double avatar2L = 68;
  static const double avatarLHalf = 70;
  static const double avatarXLHalf = 76;
  static const double avatarXL = 80;
  static const double avatar2XL = 100;
  static const double avatar3XL = 120;
  static const double avatar3XLHalf = 132;
  static const double avatar4XL = 160;

  static const double calendarGridHeight = 245;
  static const double settingsCardHeight = 140;

  static const double elevationDefault = 2;
  static const double elevationMedium = 4;
  static const double elevationLarge = 8;
  static const double elevationExtraLarge = 12;

  /// Font weights available with our custom font assets (see `pubspec.yaml`).
  static const FontWeight fontWeightLight = FontWeight.w300;
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightMediumBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;

  static const int fileSizeLimitMb = 50;

  static const double buttonHeight2XS = 31;
  static const double buttonHeightXS = 34;
  static const double buttonHeightS = 36.5;
  static const double buttonHeightM = 44.0;
  static const double buttonHeightLHalf = 54.0;
  static const double buttonHeightL = 55.0;
  static const double buttonHeightLarge = 58.0;
  static const double buttonHeight60 = 60.0;
  static const double buttonHeight62 = 62.0;
  static const double buttonHeightXL = 70;
  static const double buttonHeightXXL = 75;
  static const double buttonHeightXXXL = 105;
  static const double fancyButtonHeight = 48.0;

  static const double selectorHeight = 56.0;

  ///A copy of progress_indicator.dart _kMinCircularProgressIndicatorSize value 36.0
  static const double defaultCircularProgressIndicatorSize = 20.0;
  static const double defaultCircularProgressIndicatorSizeStrokeWidth = 2.0;

  static const double circularProgressIndicatorSizeS = 24.0;
  static const double circularProgressIndicatorSizeSStrokeWidth = 3.0;

  static const int fieldLengthS = 10;
  static const int fieldLengthNormal = 16;
  static const int fieldLengthM = 25;
  static const int fieldLengthML = 50;
  static const int fieldLengthL = 128;
  static const int fieldLengthXL = 200;

  static const Size appbarHeight = Size.fromHeight(50);
  static const double searchBarHeight = 36;
  static const double newDesignAppbarHeight = 46;
  static const double modalBottomSheetAppbarHeight = 48;

  static const double messageBoxWidthToScreenRatio = 0.8;

  static const int bottomSheetLoadingHeightPercent = 40;
  static const int bottomSheetErrorHeightPercent = 40;
  static const int bottomSheetDefaultMaxHeightPercent = 80;
  static const int searchableBottomSheetDefaultMinHeightPercent = 50;
  static const int searchableStateBottomSheetMinHeightPercent = 85;

  static const double platformBreakpoint = 700.0;
  static const double contentMaxWidth = 600;
  static const double contentMaxHeight = 700;
  static const double contentTopPadding = 250;

  static const double disabledOpacity = 0.3;
  static const double disabledOpacity50 = 0.5;
  static const double enabledOpacity = 1;

  static const BorderRadius defaultBorderRadius = BorderRadius.all(
    Radius.circular(radiusDefaultMedium),
  );

  static const BorderRadius radiusLBorderRadius = BorderRadius.all(Radius.circular(radiusL));

  static const ShapeBorder bottomSheetShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(KSize.radiusL),
    ),
  );

  // Displacement for the backdrop filter used in dialogs
  static const double blurIntensityHorizontal = 10.0;
  static const double blurIntensityVertical = 10.0;

  // Dialog image sizes
  static const double dialogImageWidthS = 50.0;
  static const double dialogImageWidthM = 100.0;
  static const double dialogImageHeightM = 100.0;

  // Icon sizes
  static const double iconXS = 12;
  static const double iconS = 16;
  static const double iconMS = 20;
  static const double iconM = 24;
  static const double iconL = 32;

  // Elevations
  static const double smallElevation = 0.3;

  //Funds
  static const double fundsAppBarHeight = 350;
  static const double fundsAmountRadius = 1000;
  static const double fundsAmountBlur = 10;
  static const double fundsBalanceBlur = 25;
  static const double callingPlanAppBarHeight = 240;

  // Gnoc Curtains
  static const double maintenanceScreenTopSpace = 102;
  static const double maintenanceScreenImageHeight = 345;

  // Scaffolds
  static const double bottomBarPadding = 120.0;
}
