import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  final GestureTapCallback? onPressed;
  final String label;

  const PrimaryButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(3.0),
      color: primaryActionColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
        onPressed: onPressed,
        child: Text(
          label.toUpperCase(),
          textAlign: TextAlign.center,
          style: defaultFontStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
