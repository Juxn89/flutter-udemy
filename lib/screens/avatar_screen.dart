import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
	 
	const AvatarScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Avatars'),
				actions: [
					Container(
						margin: EdgeInsets.only(right: 5),
						child: CircleAvatar(
							child: Text('JG'),
							backgroundColor: Colors.teal.shade900,
						),
					)
				],
			),
			body: Center(
				 child: CircleAvatar(
					maxRadius: 110,
					backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyDTRoIQ6eJql9hI7oNwWUjizb4-If9myxrQ&s'),
				 )
			),
		);
	}
}