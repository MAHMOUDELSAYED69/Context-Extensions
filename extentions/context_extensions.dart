import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

//! THEME EXTENSION
extension ThemeExtensions on BuildContext {
//! Recommended to use: ThemeData get theme => Theme.of(this);
  ThemeData get theme => Theme.of(this);

  // Existing extensions
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;
  CheckboxThemeData get checkboxTheme => Theme.of(this).checkboxTheme;
  ElevatedButtonThemeData get elevatedButtonTheme =>
      Theme.of(this).elevatedButtonTheme;
  OutlinedButtonThemeData get outlinedButtonTheme =>
      Theme.of(this).outlinedButtonTheme;
  TextButtonThemeData get textButtonTheme => Theme.of(this).textButtonTheme;
  ButtonBarThemeData get buttonBarTheme => Theme.of(this).buttonBarTheme;
  CardTheme get cardTheme => Theme.of(this).cardTheme;
  DialogTheme get dialogTheme => Theme.of(this).dialogTheme;
  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      Theme.of(this).floatingActionButtonTheme;
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      Theme.of(this).bottomNavigationBarTheme;
  NavigationRailThemeData get navigationRailTheme =>
      Theme.of(this).navigationRailTheme;
  SliderThemeData get sliderTheme => Theme.of(this).sliderTheme;
  TabBarTheme get tabBarTheme => Theme.of(this).tabBarTheme;
  TooltipThemeData get tooltipTheme => Theme.of(this).tooltipTheme;
  PopupMenuThemeData get popupMenuTheme => Theme.of(this).popupMenuTheme;
  MaterialBannerThemeData get bannerTheme => Theme.of(this).bannerTheme;
  DividerThemeData get dividerTheme => Theme.of(this).dividerTheme;
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;
  TimePickerThemeData get timePickerTheme => Theme.of(this).timePickerTheme;
  ThemeData get darkTheme => ThemeData.dark();
  ThemeData get lightTheme => ThemeData.light();

  // Additional extensions
  ButtonThemeData get buttonTheme => Theme.of(this).buttonTheme;
  ChipThemeData get chipTheme => Theme.of(this).chipTheme;
  DataTableThemeData get dataTableTheme => Theme.of(this).dataTableTheme;
  DrawerThemeData get drawerTheme => Theme.of(this).drawerTheme;
  ExpansionTileThemeData get expansionTileTheme =>
      Theme.of(this).expansionTileTheme;
  ListTileThemeData get listTileTheme => Theme.of(this).listTileTheme;
  MenuThemeData get menuTheme => Theme.of(this).menuTheme;
  NavigationBarThemeData get navigationBarTheme =>
      Theme.of(this).navigationBarTheme;
  PageTransitionsTheme get pageTransitionsTheme =>
      Theme.of(this).pageTransitionsTheme;
  ProgressIndicatorThemeData get progressIndicatorTheme =>
      Theme.of(this).progressIndicatorTheme;
  RadioThemeData get radioTheme => Theme.of(this).radioTheme;
  ScrollbarThemeData get scrollbarTheme => Theme.of(this).scrollbarTheme;
  SwitchThemeData get switchTheme => Theme.of(this).switchTheme;
  TextSelectionThemeData get textSelectionTheme =>
      Theme.of(this).textSelectionTheme;
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;
  MaterialTapTargetSize get materialTapTargetSize =>
      Theme.of(this).materialTapTargetSize;
  Typography get typography => Theme.of(this).typography;
  VisualDensity get visualDensity => Theme.of(this).visualDensity;
  IconButtonThemeData get iconButtonTheme => Theme.of(this).iconButtonTheme;
}

//! SCREEN EXTENSIONS
extension MediaQueryExtensions on BuildContext {
  // Get the screen height
  double get height => MediaQuery.sizeOf(this).height;

  // Get the screen width
  double get width => MediaQuery.sizeOf(this).width;

  // Get the device's pixel ratio
  double get pixelRatio => MediaQuery.devicePixelRatioOf(this);

  // Get the screen orientation
  Orientation get orientation => MediaQuery.orientationOf(this);

  // Check if the device is in landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  // Check if the device is in portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  // Get the screen's aspect ratio
  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;

  // Get the padding at the top (e.g., status bar)
  double get paddingTop => MediaQuery.paddingOf(this).top;

  // Get the padding at the bottom (e.g., for devices with gesture navigation)
  double get paddingBottom => MediaQuery.paddingOf(this).bottom;

  // Get the padding on the left
  double get paddingLeft => MediaQuery.paddingOf(this).left;

  // Get the padding on the right
  double get paddingRight => MediaQuery.paddingOf(this).right;

  // Get the available height, excluding system status bar and bottom inset
  double get usableHeight => height - paddingTop - paddingBottom;

  // Get the available width, excluding left and right padding
  double get usableWidth => width - paddingLeft - paddingRight;

  // Check if the device has a notch
  bool get hasNotch => paddingTop > 20;

  // Get the system's text scaling factor using the new method
  TextScaler get textScaleFactor => MediaQuery.textScalerOf(this);

  // Get the bottom inset (e.g., keyboard height)
  double get viewInsetsBottom => MediaQuery.viewInsetsOf(this).bottom;

  // Check if the keyboard is visible
  bool get isKeyboardVisible => viewInsetsBottom > 0;
}

//! CUBIT EXTENSION
extension CubitExtensions on BuildContext {
  T cubit<T extends Cubit<Object>>() => BlocProvider.of<T>(this);
}

//! PADDING EXTENSIONS
extension PaddingExtensions on Widget {
  // Add padding to a widget with a custom EdgeInsets
  Widget withPadding(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );

  // Add symmetric padding (vertical and horizontal)
  Widget withSymmetricPadding(
          {double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Add padding to all sides of a widget
  Widget withAllPadding(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  // Add padding to specific sides of a widget
  Widget withOnlyPadding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}

//! MARGIN EXTENSIONS
extension MarginExtensions on Widget {
  // Add margin to a widget with a custom EdgeInsets
  Widget withMargin(EdgeInsetsGeometry margin) => Container(
        margin: margin,
        child: this,
      );

  // Add symmetric margin (vertical and horizontal)
  Widget withSymmetricMargin(
          {double vertical = 0.0, double horizontal = 0.0}) =>
      Container(
        margin:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Add margin to all sides of a widget
  Widget withAllMargin(double margin) => Container(
        margin: EdgeInsets.all(margin),
        child: this,
      );

  // Add margin to specific sides of a widget
  Widget withOnlyMargin({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Container(
        margin:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}

//! NAVIGATION EXTENSION
extension NavigationExtensions on BuildContext {
  // Push a new page onto the stack
  void navigateTo(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));

  // Push a named route onto the stack
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);

  // Replace the current route with a new one
  Future<T?> replaceWith<T, TO>(Widget page) => Navigator.of(this)
      .pushReplacement(MaterialPageRoute(builder: (_) => page));

  // Replace the current route with a named route
  Future<T?> replaceWithNamed<T, TO>(String routeName, {Object? arguments}) =>
      Navigator.of(this)
          .pushReplacementNamed<T, TO>(routeName, arguments: arguments);

  // Pop the current route off the stack
  void navigateBack() => Navigator.of(this).pop();

  // Pop until the predicate returns true
  void popUntil(RoutePredicate predicate) =>
      Navigator.of(this).popUntil(predicate);

  // Pop the current route and push a new route
  Future<T?> popAndPushNamed<T, TO>(String routeName, {Object? arguments}) =>
      Navigator.of(this)
          .popAndPushNamed<T, TO>(routeName, arguments: arguments);

  // Push a new route and remove all previous routes
  Future<T?> pushAndRemoveUntil<T>(Widget page, RoutePredicate predicate) =>
      Navigator.of(this).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), predicate);

  // Push a named route and remove all previous routes
  Future<T?> pushNamedAndRemoveUntil<T>(
          String routeName, RoutePredicate predicate, {Object? arguments}) =>
      Navigator.of(this).pushNamedAndRemoveUntil<T>(routeName, predicate,
          arguments: arguments);

  // Try to pop the route; returns true if successful, otherwise false
  Future<bool> maybePop() => Navigator.of(this).maybePop();

  // Replace the current route with a new route using a custom route
  Future<T?> replaceWithCustomRoute<T, TO>(Route<T> route) =>
      Navigator.of(this).pushReplacement(route);

  // Push a custom route onto the stack
  Future<T?> pushCustomRoute<T>(Route<T> route) =>
      Navigator.of(this).push(route);
}

//! DATE TIME EXTENSION
extension DateTimeExtensions on DateTime {
  // Check if the date is today
  bool isToday() {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  // Check if the date was yesterday
  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  // Check if the date is tomorrow
  bool isTomorrow() {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.year == year &&
        tomorrow.month == month &&
        tomorrow.day == day;
  }

  // Format the date as a string
  String format([String pattern = 'yyyy-MM-dd HH:mm:ss']) =>
      DateFormat(pattern).format(this);

  // Get the start of the day (midnight)
  DateTime get startOfDay => DateTime(year, month, day);

  // Get the end of the day (just before midnight)
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  // Check if the date is in a leap year
  bool get isLeapYear {
    final year = this.year;
    if (year % 4 != 0) return false;
    if (year % 100 == 0 && year % 400 != 0) return false;
    return true;
  }

  // Add a specific number of weekdays to the date
  DateTime addWeekdays(int days) {
    var date = this;
    while (days > 0) {
      date = date.add(const Duration(days: 1));
      if (date.weekday != DateTime.saturday &&
          date.weekday != DateTime.sunday) {
        days--;
      }
    }
    return date;
  }

  // Calculate the difference in days between two dates
  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  // Check if the date falls on a weekend
  bool get isWeekend =>
      weekday == DateTime.saturday || weekday == DateTime.sunday;

  // Check if the date falls on a weekday
  bool get isWeekday => !isWeekend;

  // Get the next occurrence of a specific weekday
  DateTime next(int weekday) {
    assert(weekday >= 1 && weekday <= 7);
    return add(Duration(days: (weekday - this.weekday + 7) % 7));
  }

  // Get the previous occurrence of a specific weekday
  DateTime previous(int weekday) {
    assert(weekday >= 1 && weekday <= 7);
    return subtract(Duration(days: (this.weekday - weekday + 7) % 7));
  }
}

//! GESTURE EXTENSIONS
extension GestureExtensions on Widget {
  // Add an onTap handler to a widget
  Widget onTap(VoidCallback onTap) => GestureDetector(
        onTap: onTap,
        child: this,
      );

  // Add an onLongPress handler to a widget
  Widget onLongPress(VoidCallback onLongPress) => GestureDetector(
        onLongPress: onLongPress,
        child: this,
      );

  // Add onTap and onLongPress handlers to a widget
  Widget onTapAndLongPress({
    required VoidCallback onTap,
    required VoidCallback onLongPress,
  }) =>
      GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      );
}

//! TRANSFORM EXTENSIONS
extension TransformExtensions on Widget {
  // Rotate a widget by a given angle (in radians)
  Widget rotate(double angle) => Transform.rotate(
        angle: angle,
        child: this,
      );

  // Scale a widget by a given factor
  Widget scale(double scale) => Transform.scale(
        scale: scale,
        child: this,
      );

  // Translate a widget by given offsets
  Widget translate({double dx = 0.0, double dy = 0.0}) => Transform.translate(
        offset: Offset(dx, dy),
        child: this,
      );
}

//! VISIBILITY EXTENSIONS
extension VisibilityExtensions on Widget {
  // Show or hide a widget based on a condition
  Widget visible(bool isVisible) => Visibility(
        visible: isVisible,
        child: this,
      );

  // Hide a widget while keeping its space
  Widget invisible() => Visibility(
        visible: false,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: this,
      );

  // Completely remove a widget from the layout
  Widget gone() => const SizedBox.shrink();
}

//! ALIGNMENT EXTENSIONS
extension AlignmentExtensions on Widget {
  // Center a widget
  Widget centered() => Center(child: this);

  // Align a widget to a specific alignment
  Widget aligned(Alignment alignment) => Align(
        alignment: alignment,
        child: this,
      );

  // Align a widget to the top left
  Widget alignTopLeft() => Align(
        alignment: Alignment.topLeft,
        child: this,
      );

  // Align a widget to the top right
  Widget alignTopRight() => Align(
        alignment: Alignment.topRight,
        child: this,
      );

  // Align a widget to the bottom left
  Widget alignBottomLeft() => Align(
        alignment: Alignment.bottomLeft,
        child: this,
      );

  // Align a widget to the bottom right
  Widget alignBottomRight() => Align(
        alignment: Alignment.bottomRight,
        child: this,
      );
}

//! SIZEDBOX EXTENSIONS
extension SizedBoxExtensions on Widget {
  // Add a fixed width to a widget
  Widget withWidth(double width) => SizedBox(
        width: width,
        child: this,
      );

  // Add a fixed height to a widget
  Widget withHeight(double height) => SizedBox(
        height: height,
        child: this,
      );

  // Add both fixed width and height to a widget
  Widget withSize({required double width, required double height}) => SizedBox(
        width: width,
        height: height,
        child: this,
      );

  // Add a square size to a widget (same width and height)
  Widget withSquareSize(double size) => SizedBox(
        width: size,
        height: size,
        child: this,
      );

  // Add a SizedBox with specific width and height but without a child
  Widget withEmptyBox({double width = 0.0, double height = 0.0}) => SizedBox(
        width: width,
        height: height,
      );

  // Add spacing above a widget
  Widget withVerticalSpacing(double height) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: height),
          this,
        ],
      );

  // Add spacing to the left of a widget
  Widget withHorizontalSpacing(double width) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: width),
          this,
        ],
      );
}
