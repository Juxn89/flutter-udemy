import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';

class AppRoutes {
	static const initialRoute = 'home';

	static Map<String, Widget Function(BuildContext)> routes = {
		'alert': (BuildContext context) => AlertScreen(),
		'card': (BuildContext context) => CardScreen(),
		'home': (BuildContext context) => HomeScreen(),
		'listview1': (BuildContext context) => ListView1Screen(),
		'listview2': (BuildContext context) => ListView2Screen()
	};

	static Route<dynamic> onGenerateRoute (RouteSettings settings) {
		// It works when you need to a dynamic route
		print(settings);
		return MaterialPageRoute(builder: (cotext) => AlertScreen());
	}
}