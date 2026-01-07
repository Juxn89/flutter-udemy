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
			),
			floatingActionButtonTheme: FloatingActionButtonThemeData(
				backgroundColor: primary,
				foregroundColor: Colors.white,
				elevation: 5
			),
			inputDecorationTheme: InputDecorationTheme(
				floatingLabelStyle: TextStyle(color: primary),
				enabledBorder: OutlineInputBorder(
					borderSide: BorderSide(color: primary),
					borderRadius: BorderRadius.only(
						bottomLeft: Radius.circular(10),
						topRight: Radius.circular(10)
					)
				),
				focusedBorder: OutlineInputBorder(
					borderSide: BorderSide(color: primary),
					borderRadius: BorderRadius.only(
						bottomLeft: Radius.circular(10),
						topRight: Radius.circular(10)
					)
				),
			)
		);
}