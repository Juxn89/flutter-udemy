import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Movies App',
			initialRoute: 'home',
			routes: {
				'home': (_) => HomeScreen(),
				'details': (_) => DatailsScreen()
			},
			theme: ThemeData.light().copyWith(
				appBarTheme: AppBarTheme(
					backgroundColor: Colors.indigo,
					titleTextStyle: TextStyle(
						color: Colors.white,
						fontSize: 20
					),
					actionsIconTheme: IconThemeData(
						color: Colors.white
					),
				)
			),
		);
	}
}