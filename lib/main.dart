import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Material App',
			initialRoute: 'home',
			theme: ThemeData.dark(),
			routes: {
				'scroll_screen': (BuildContext context) => ScrollScreen(),
				'basic_design': (BuildContext context) => BasicDesigScreen(),
				'home': (BuildContext context) => HomeScreen(),
			},
		);
	}
}