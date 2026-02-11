import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:movies/provider/movies_providers.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const AppState());
}

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

class AppState extends StatelessWidget {
	const AppState({super.key});

	@override
	Widget build(BuildContext context) {
		return MultiProvider(
			providers: [
				ChangeNotifierProvider(create: (context) => MoviesProvider(), lazy: false, )
			],
			child: MyApp(),
		);
	}
}