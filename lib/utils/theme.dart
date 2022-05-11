import 'package:flutter/cupertino.dart';

bool isLightTheme(BuildContext context) {
  return CupertinoTheme.of(context).brightness == Brightness.light;
}
