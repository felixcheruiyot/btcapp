import 'package:btcapp/constants.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int>? onItemTapped;

  const MainMenu(
      {Key? key, required this.currentIndex, required this.onItemTapped})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  MainMenuState createState() =>
      MainMenuState(currentIndex: currentIndex, onItemTapped: onItemTapped);

  // MainMenuState createState() =>
  //     MainMenuState(currentIndex: 1, onItemTapped: (int value) {});
}

class MainMenuState extends State<MainMenu> {
  final int currentIndex;
  final ValueChanged<int>? onItemTapped;

  MainMenuState({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Receive',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Send Money',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Withdraw',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: defaultFontColor,
      onTap: onItemTapped,
      backgroundColor: secondaryDarkColor,
    );
  }
}
