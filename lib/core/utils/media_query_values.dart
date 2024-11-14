import 'package:flutter/cupertino.dart';

extension MediaQueryValues on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  Orientation get orientation => MediaQuery.of(this).orientation;
}
