import 'package:flutter/material.dart';

class CustomNavigationBart extends StatelessWidget {
  const CustomNavigationBart({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
			elevation: 0,
			currentIndex: 0,
			items: <BottomNavigationBarItem>[
				BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
				BottomNavigationBarItem(icon: Icon(Icons.compass_calibration), label: 'Directions'),
			],
		);
  }
}