import 'package:flutter/cupertino.dart';

class FilledCircle extends StatelessWidget {
  final Widget child;

  FilledCircle({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
          shape: CircleBorder(), color: CupertinoColors.secondarySystemFill),
      child: child,
    );
  }
}
