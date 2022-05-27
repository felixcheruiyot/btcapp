import 'package:flutter/material.dart';
import 'package:btcapp/pages/receive/index.dart';

void main() => runApp(const BTCApp());

class BTCApp extends StatelessWidget {
  const BTCApp({Key? key}) : super(key: key);

  static const String _title = 'Lightning fast payments for everyone';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ReceivePaymentsList(),
    );
  }
}
