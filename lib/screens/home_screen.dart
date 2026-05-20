import 'package:flutter/material.dart';
import 'package:userpreferences/shared/preferences.dart';
import 'package:userpreferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
	static const String routername = 'Home';
	 
	const HomeScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Home'),
			),
			drawer: SideMenu(),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					Text('Is darkmode?: ${Preferences.isDarkMode}'),
					Divider(),
					Text('Gender: ${Preferences.gender}'),
					Divider(),
					Text('Fullname: ${Preferences.fullname}'),
					Divider()
				],
			)
		);
	}
}