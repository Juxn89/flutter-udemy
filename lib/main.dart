import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MultiProvider(
			providers: [
				ChangeNotifierProvider(create: (context) => UiProvider())
			],
			child: MaterialApp(
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
					),
					bottomNavigationBarTheme: BottomNavigationBarThemeData(
						selectedItemColor: Colors.teal.shade800
					)
				)
			),
		);
	}
}
