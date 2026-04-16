import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBart extends StatelessWidget {
  const CustomNavigationBart({super.key});

  @override
  Widget build(BuildContext context) {
		final uiProvider = Provider.of<UiProvider>(context);
		final currentTabSelected = uiProvider.selectedMenuOption;

    return BottomNavigationBar(
			elevation: 0,
			currentIndex: currentTabSelected,
			items: <BottomNavigationBarItem>[
				BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
				BottomNavigationBarItem(icon: Icon(Icons.compass_calibration), label: 'Directions'),
			],
			onTap: (int index){
				uiProvider.selectedMenuOption = index;
			},
		);
  }
}