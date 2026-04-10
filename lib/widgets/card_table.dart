import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
	const CardTable({super.key});

	@override
	Widget build(BuildContext context) {
		return Table(
			children: [
				TableRow(
					children: [
						_SingleCard(icon: Icons.border_all, text: 'General', color: Colors.lightBlue,),
						_SingleCard(icon: Icons.car_rental, text: 'Transport', color: Colors.pinkAccent,),
					],
				),
				TableRow(
					children: [
						_SingleCard(icon: Icons.shop, text: 'Shopping', color: Colors.purple,),
						_SingleCard(icon: Icons.cloud, text: 'Bill', color: Colors.purpleAccent,),
					],
				),
				TableRow(
					children: [
						_SingleCard(icon: Icons.movie, text: 'Entertainment', color: Colors.red,),
						_SingleCard(icon: Icons.food_bank_outlined, text: 'Grocery', color: Colors.green,),
					],
				),
				TableRow(
					children: [
						_SingleCard(icon: Icons.games, text: 'Games', color: Colors.orange,),
						_SingleCard(icon: Icons.settings, text: 'Settings', color: Colors.grey,),
					],
				),
			],
		);
	}
}

class _SingleCard extends StatelessWidget {

	final IconData icon;
	final Color color;
	final String text;

  const _SingleCard({
		super.key, 
		required this.icon, 
		required this.color, 
		required this.text
	});

	@override
	Widget build(BuildContext context) {
		return _CardBackground(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					CircleAvatar(
						backgroundColor: color,
						radius: 30,
						child: Icon(icon, size: 35, color: Colors.white),
					),
					SizedBox(height: 10,),
					Text(text, style: TextStyle(color: color, fontSize: 18),)
				],
			)
		);
	}
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
    	margin: EdgeInsets.all(15),
    	child: ClipRRect(
    		borderRadius: BorderRadius.circular(20),
    		child: BackdropFilter(
    			filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    			child: Container(
    				height: 180,
    				decoration: BoxDecoration(
    					color: Color.fromRGBO(62, 66, 107, 0.7),
    					borderRadius: BorderRadius.circular(20)
    				),
    				child: child,
    			),
    		),
    	),
    );
  }
}