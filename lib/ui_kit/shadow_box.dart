import 'package:flutter/cupertino.dart';
import 'package:sms_movement_permit/utils/theme.dart';

class ShadowBox extends StatelessWidget {
  final Color shadowColor;
  final Widget child;

  ShadowBox({this.shadowColor, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        // width: 300,
        // margin: EdgeInsets.all(10),
        // height: 100,
        // padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: _getColor(context),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: _shadowColor(context),
                  blurRadius: 5,
                  offset: Offset.fromDirection(1.55, 2),
                  spreadRadius: -1)
            ]),
        child: child,
      ),
    );
  }

  Color _shadowColor(BuildContext context) =>
      this.shadowColor ?? _themeShadowColor(context);

  Color _getColor(BuildContext context) => isLightTheme(context)
      ? CupertinoColors.tertiarySystemBackground
      : CupertinoColors.darkBackgroundGray;

  Color _themeShadowColor(BuildContext context) => isLightTheme(context)
      ? CupertinoColors.lightBackgroundGray
      : CupertinoColors.darkBackgroundGray;
}
