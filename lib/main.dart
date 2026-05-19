import 'package:flutter/material.dart';
import 'package:userpreferences/screens/home_screen.dart';
import 'package:userpreferences/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Material App',
			debugShowCheckedModeBanner: false,
			initialRoute: HomeScreen.routername,
			routes: {
				HomeScreen.routername: (context) => HomeScreen(),
				SettingsScreen.routername: (context) => SettingsScreen()
			},
		);
	}
}