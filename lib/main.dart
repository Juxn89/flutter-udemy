import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Material App',
			initialRoute: 'scroll_screen',
			routes: {
				'basic_design': (BuildContext context) => BasicDesigScreen(),
				'scroll_screen': (BuildContext context) => ScrollScreen()
			},
		);
	}
}