import 'package:flutter/material.dart';
import 'package:designs/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
	 
	const HomeScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: [
					Background(),

					_HomeBody()
				],
			)
		);
	}
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
			child: Column(
				children: [
					PageTitle()
				],
			),
		);
  }
}