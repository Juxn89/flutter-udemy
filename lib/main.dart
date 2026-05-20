import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userpreferences/providers/theme_provider.dart';
import 'package:userpreferences/screens/screens.dart';
import 'package:userpreferences/shared/preferences.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();

	await Preferences.init();

	runApp(
		MultiProvider(
			providers: [
				ChangeNotifierProvider(create: (context) => ThemeProvider(isDarkMode: Preferences.isDarkMode))
			],
			child: MyApp(),
		)
	);
}

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
			theme: Provider.of<ThemeProvider>(context).currentTheme,
		);
	}
}