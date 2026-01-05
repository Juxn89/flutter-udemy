import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

	const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
	double _width = 50;
	double _height = 50;
	Color _color = Colors.blue.shade800;
	BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

	void changeShape() {
		final random = Random();
		_width = random.nextInt(300).toDouble() + 70;
		_height = random.nextInt(300).toDouble() + 70;
		_color = Color.fromRGBO(
			random.nextInt(255), 
			random.nextInt(255),
			random.nextInt(255),
			1
		);
		BorderRadiusGeometry _borderRadius = BorderRadius.circular(
			random.nextInt(100).toDouble() + 10
		);

		print('changed!');

		setState(() {});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Animated: Curve Class'),
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.play_circle_outline, size: 40,),
				onPressed: () => changeShape(),
			),
			body: Center(
				 child: AnimatedContainer(
					duration: Duration(microseconds: 400),
					// curve: Curves.bounceOut,
					// curve: Curves.elasticOut,
					curve: Curves.easeOutCubic,
					width: _width,
					height: _height,
					decoration: BoxDecoration(
						color: _color,
						borderRadius: _borderRadius
					),
				 ),
			),
		);
	}
}