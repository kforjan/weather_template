import 'package:flutter/widgets.dart';

extension ProportionalSizeExtension on BuildContext {
  static const _designHeight = 734.0; //TODO: define design height
  static const _designWidth = 375.0; //TODO: define design width

  double getProportionalHeight(double height) {
    final bottomPadding = MediaQueryData.fromView(
      View.of(this),
    ).padding.bottom;
    final topPadding = MediaQueryData.fromView(
      View.of(this),
    ).padding.top;
    final screenHeight =
        MediaQuery.of(this).size.height - bottomPadding - topPadding;
    return (height / _designHeight) * screenHeight;
  }

  double getProportionalWidth(double width) {
    final screenWidth = MediaQuery.of(this).size.width;
    return (width / _designWidth) * screenWidth;
  }
}
