import 'package:btcapp/constants.dart';
import 'package:btcapp/pages/receive/transactions.dart';
import 'package:btcapp/widgets/main_menu.dart';
import 'package:flutter/material.dart';

class ReceivePaymentsList extends StatefulWidget {
  const ReceivePaymentsList({Key? key}) : super(key: key);

  @override
  State<ReceivePaymentsList> createState() => _ReceivePaymentsListState();
}

class _ReceivePaymentsListState extends State<ReceivePaymentsList> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    TransactionsList(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor,
      /*appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),*/
      body: Center(
          child: Row(
        children: [
          Column(
            children: const [Text("Hellow world")],
          ),
          Column(
            children: [
              _widgetOptions.elementAt(_selectedIndex),
            ],
          )
        ],
      )),
      bottomNavigationBar:
          MainMenu(currentIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
