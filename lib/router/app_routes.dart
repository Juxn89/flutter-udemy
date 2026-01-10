import 'package:flutter/material.dart';

import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
	static const initialRoute = 'home';

	static final menuOptions = <MenuOptions>[
		MenuOptions(route: 'home', icon: Icons.home, name: 'Home Screen', screen: HomeScreen()),
		MenuOptions(route: 'alert', icon: Icons.add_alert_sharp, name: 'Alert Screen', screen: AlertScreen()),
		MenuOptions(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: CardScreen()),
		MenuOptions(route: 'listview1', icon: Icons.list, name: 'Listview #1 Screen', screen: ListView1Screen()),
		MenuOptions(route: 'listview2', icon: Icons.list_alt, name: 'Listview #2 Screen', screen: ListView2Screen()),
		MenuOptions(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Circle Avatar', screen: AvatarScreen()),
		MenuOptions(route: 'animatedCurve', icon: Icons.play_circle, name: 'AnimatedContainer: Curve Class', screen: AnimatedScreen()),
		MenuOptions(route: 'textinput', icon: Icons.input, name: 'Text Input Screen', screen: InputScreen()),
		MenuOptions(route: 'slider', icon: Icons.motion_photos_on_rounded, name: 'Slider & Checks Screen', screen: SliderScreen()),
	];

	static final menuOptions1 = <MenuOptions>[
		MenuOptions(route: 'alert', icon: Icons.add_alert_sharp, name: 'Alert Screen', screen: AlertScreen()),
		MenuOptions(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: CardScreen()),
		MenuOptions(route: 'listview1', icon: Icons.list, name: 'Listview #1 Screen', screen: ListView1Screen()),
		MenuOptions(route: 'listview2', icon: Icons.list_alt, name: 'Listview #2 Screen', screen: ListView2Screen()),
		MenuOptions(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Circle Avatar', screen: AvatarScreen()),
		MenuOptions(route: 'animatedCurve', icon: Icons.play_circle, name: 'AnimatedContainer: Curve Class', screen: AnimatedScreen()),
		MenuOptions(route: 'textinput', icon: Icons.input, name: 'Text Input Screen', screen: InputScreen()),
		MenuOptions(route: 'slider', icon: Icons.input, name: 'Slider Screen', screen: SliderScreen()),

	];

	static Map<String, Widget Function(BuildContext)> getAppRoutes() {
		Map<String, Widget Function(BuildContext)> appRoutes = {};
		appRoutes.addAll({ 'home': (BuildContext context) => HomeScreen() });

		for (var options in menuOptions) {
		  appRoutes.addAll({ options.route : (BuildContext context) => options.screen });
		}

		return appRoutes;
	}

	static Map<String, Widget Function(BuildContext)> routes = {
		'alert': (BuildContext context) => AlertScreen(),
		'card': (BuildContext context) => CardScreen(),
		// 'home': (BuildContext context) => HomeScreen(),
		'listview1': (BuildContext context) => ListView1Screen(),
		'listview2': (BuildContext context) => ListView2Screen(),
		'avatar': (BuildContext context) => AvatarScreen(),
		'animatedCurve': (BuildContext context) => AnimatedScreen(),
		'textinput': (BuildContext context) => InputScreen(),
		'slider': (BuildContext context) => SliderScreen(),
	};

	static Route<dynamic> onGenerateRoute (RouteSettings settings) {
		// It works when you need to a dynamic route
		print(settings);
		return MaterialPageRoute(builder: (cotext) => AlertScreen());
	}
}