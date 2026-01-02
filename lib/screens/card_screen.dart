import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
	 
	const CardScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Card Widget'),
			),
			body: ListView(
				padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
				children: [
					CustomCardType1(),
					SizedBox(height: 10),
					CustomCardType2()
				],
			)
		);
	}
}

