import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(int value) onTap;
  final int currentIndex;

  const NavBar({
    Key? key,
    required this.onTap,
    this.currentIndex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (value) => onTap(value),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.map_outlined),
          label: 'Map',
        ),
        NavigationDestination(
          icon: Icon(Icons.confirmation_num_outlined),
          label: 'History',
        ),
        NavigationDestination(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
    );
  }
}
