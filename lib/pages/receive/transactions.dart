import 'package:btcapp/constants.dart';
import 'package:btcapp/widgets/list_item.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({Key? key}) : super(key: key);

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  var title = "Felix cheruiyot";
  var subTitle = "xx";
  var valueLabel = "B";
  var value = "100";
  var state = "COMPLETED";
  // GestureTapCallback onTap => () {
  //   return null;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor,
      body: Center(
          child:
              // ListBody(children: [
              ListItem(
                  title: title,
                  subTitle: subTitle,
                  valueLabel: valueLabel,
                  value: value,
                  state: state,
                  onTap: () {})
          // ]),
          ),
    );
  }
}
