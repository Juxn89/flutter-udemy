import 'package:flutter/material.dart';

class AppTheme {
	static const Color primary = Colors.teal;

	static final ThemeData lightTheme = ThemeData
		.light()
		.copyWith(
			primaryColor: Colors.indigo,
			appBarTheme: AppBarTheme(
				color: Colors.teal[800],
				elevation: 0,
			)
		);

	static final ThemeData darkTheme = ThemeData
		.dark()
		.copyWith(
			primaryColor: Colors.indigo,
			appBarTheme: AppBarTheme(
				color: Colors.teal[800],
				elevation: 0,
			),
			scaffoldBackgroundColor: Colors.black,
			textButtonTheme: TextButtonThemeData(
				style: TextButton.styleFrom(foregroundColor: primary)
			)
		);
}