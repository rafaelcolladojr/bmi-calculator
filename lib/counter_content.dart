import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'round_icon_button.dart';

class CounterContent extends StatelessWidget {
  CounterContent({
    Key? key,
    required this.label,
    this.value = 0,
    this.onPressMinus,
    this.onPressPlus,
  }) : super(key: key);

  String label;
  int value;
  final VoidCallback? onPressMinus, onPressPlus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              value.toString(),
              style: kBoldTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: CupertinoIcons.minus,
              onPress: onPressMinus,
            ),
            const SizedBox(
              width: 15.0,
            ),
            RoundIconButton(
              icon: Icons.add,
              onPress: onPressPlus,
            ),
          ],
        ),
      ],
    );
  }
}
