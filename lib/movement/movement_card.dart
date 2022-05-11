import 'package:flutter/cupertino.dart';
import 'package:sms_movement_permit/ui_kit/cupertino_text.dart';
import 'package:sms_movement_permit/ui_kit/filled_circle.dart';
import 'package:sms_movement_permit/ui_kit/shadow_box.dart';

class MovementCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovementCardLayout(
      image: MovementCardImage(),
      actions: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            FilledCircle(
              child: CupertinoText('6'),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CupertinoText('Movement type 6'),
                ],
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: Text('Send'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MovementCardLayout extends StatelessWidget {
  final Widget actions;
  final Widget image;

  MovementCardLayout({this.image, this.actions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: ShadowBox(
        child: Column(
          children: [image, actions],
        ),
      ),
    );
  }
}

class MovementCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Placeholder(
        color: CupertinoColors.lightBackgroundGray,
      ),
    );
  }
}
