import 'package:btcapp/constants.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String title;
  final String state;
  final String subTitle;
  final String valueLabel;
  final String value;

  const ListItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.valueLabel,
      required this.value,
      required this.state,
      required this.onTap})
      : super(key: key);

  Color get _getStateColor {
    if (state == 'COMPLETE') {
      return successFontColor;
    }
    if (state == 'FAILED') {
      return failedFontColor;
    }
    return defaultFontColor;
  }

  IconData get _getStateIcon {
    if (state == 'COMPLETE') {
      return Icons.check;
    }
    if (state == 'FAILED') {
      return Icons.cancel_rounded;
    }
    return Icons.arrow_right;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: secondaryDarkColor,
        height: 70,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: _getStateColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(_getStateIcon, color: Colors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(subTitle.toUpperCase(),
                        style: TextStyle(color: Colors.blueGrey[300]))
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(valueLabel.toUpperCase()),
                Text(
                  value,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
