import 'package:flutter/material.dart';
import 'package:userpreferences/screens/screens.dart';

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