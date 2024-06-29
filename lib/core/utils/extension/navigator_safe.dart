import 'package:flutter/material.dart';

extension NavigatorX on BuildContext {
  void safePopNavigatorIf({required bool value}) {
    if (value) safeNavigatorPop();
  }

  void safeNavigatorPop() {
    if (Navigator.canPop(this)) Navigator.pop(this);
  }

  void safePopUntil() {
    Navigator.popUntil(this, (Route<dynamic> route) => route.isFirst);
  }

  NavigatorState get navigator => Navigator.of(this);
  Future<T?> safeNavigate<T extends Object>(Widget widget) => navigator.push(
        MaterialPageRoute<T>(
          builder: (_) => widget,
        ),
      );
}
