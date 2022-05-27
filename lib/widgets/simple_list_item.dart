import 'package:flutter/material.dart';

class SimpleListItem extends StatelessWidget {
  final String title;
  final String description;
  final GestureTapCallback? onTap;

  const SimpleListItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.blueGrey[300]),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.blueGrey[400],
            )
          ],
        ),
      ),
    );
  }
}
