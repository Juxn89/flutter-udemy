import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
		int currentCounter = 1;
		const fontSize30 = TextStyle(fontSize: 30);

		return Scaffold(
			appBar: AppBar(
				title: Text('Home Screen', style: TextStyle(color: Colors.white)),
				backgroundColor: Colors.indigo,
				elevation: 10,				
			),
			floatingActionButton: FloatingActionButton(
				onPressed: (){
					currentCounter++;
					print('XD $currentCounter');
				},
				backgroundColor: Colors.indigo,
				child: Icon(Icons.plus_one, color: Colors.white,),
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						Text('Clicks Counter', style: fontSize30),
						Text('$currentCounter', style: fontSize30,)
					],
				),
			),
		);
	}
}

void onPress() {
	print('Hello');
}