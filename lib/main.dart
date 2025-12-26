import 'package:flutter/material.dart';
import 'package:counter_app/screens/counter_screen.dart';
// import 'package:counter_app/screens/home_screen.dart';

void main() {
	runApp( App() );
}

class App extends StatelessWidget {
  const App({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: CounterScreen()
		);
	}

}