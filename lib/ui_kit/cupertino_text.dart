import 'package:flutter/cupertino.dart';
import 'package:sms_movement_permit/utils/theme.dart';

class CupertinoText extends StatelessWidget {
  final String data;

  CupertinoText(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(inherit: true, color: _getColor(context)),
    );
  }

  Color _getColor(BuildContext context) =>
      isLightTheme(context) ? CupertinoColors.black : CupertinoColors.white;
}
