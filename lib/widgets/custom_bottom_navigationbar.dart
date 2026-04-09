import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
	const CustomBottomNavigationBar({super.key});

	@override
	Widget build(BuildContext context) {
		return BottomNavigationBar(
			selectedItemColor: Colors.pink,
			unselectedItemColor: Color.fromRGBO(116, 117, 151, 1),
			backgroundColor: Color.fromRGBO(55, 57, 81, 1),
			showSelectedLabels: false,
			showUnselectedLabels: false,
			items: [
				BottomNavigationBarItem(
					icon: Icon(Icons.calendar_today_outlined,),
					label: 'Calendar'
				),
				BottomNavigationBarItem(
					icon: Icon(Icons.pie_chart_outline_outlined),
					label: 'Charts'
				),
				BottomNavigationBarItem(
					icon: Icon(Icons.supervised_user_circle_outlined),
					label: 'Users'
				)
			]
		);
	}
}