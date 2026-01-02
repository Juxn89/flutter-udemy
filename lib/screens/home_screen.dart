import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
	final menuOptions = AppRoutes.menuOptions1;

	HomeScreen({super.key});
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Components in Flutter'),
				elevation: 0,
			),
			body: ListView.separated(
				itemBuilder: (context, index) => ListTile(
					title: Text( menuOptions[index].name, style: TextStyle(color: Colors.white),),
					leading: Icon( menuOptions[index].icon, color: AppTheme.primary, ),
					onTap: () {
						// final route = MaterialPageRoute(builder: (context) => ListView1Screen(),);
						// // Navigator.push(context, route); // Allow you go back to the previous page
						// Navigator.pushReplacement(context, route); // Don't allow you go back to the previous page

						Navigator.pushNamed(context, menuOptions[index].route );
					},
				), 
				separatorBuilder: (context, index) => Divider(), 
				itemCount: menuOptions.length
			)
		);
	}
}