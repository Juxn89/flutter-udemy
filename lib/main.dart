import 'package:flutter/material.dart';
import 'package:qr_reader/pages/page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'QR Reader App',
			initialRoute: 'home',
			routes: {
				'home': (context) => HomePage(), 
				'map': (context) => MapPage(), 
			},
			theme: ThemeData.dark().copyWith(
				primaryColor: Colors.teal.shade800,
				appBarTheme: AppBarTheme(
					backgroundColor: Colors.teal.shade800,
				),
				floatingActionButtonTheme: FloatingActionButtonThemeData(
					backgroundColor: Colors.teal.shade800
				)
			)
		);
	}
}
