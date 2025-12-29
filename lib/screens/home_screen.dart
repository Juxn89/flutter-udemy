import 'package:flutter/material.dart';
import 'package:components_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
	 
	const HomeScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Components in Flutter'),
				elevation: 0,
			),
			body: ListView.separated(
				itemBuilder: (context, index) => ListTile(
					title: Text('Name'),
					leading: Icon(Icons.access_alarm),
					onTap: () {
						// final route = MaterialPageRoute(builder: (context) => ListView1Screen(),);
						// // Navigator.push(context, route); // Allow you go back to the previous page
						// Navigator.pushReplacement(context, route); // Don't allow you go back to the previous page

						Navigator.pushNamed(context, 'card');
					},
				), 
				separatorBuilder: (context, index) => Divider(), 
				itemCount: 10
			)
		);
	}
}