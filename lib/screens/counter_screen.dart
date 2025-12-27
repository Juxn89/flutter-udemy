import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
	int currentCounter = 0;

	@override
	Widget build(BuildContext context) {
		const fontSize30 = TextStyle(fontSize: 30);

		return Scaffold(
			appBar: AppBar(
				title: Text('Counter Screen', style: TextStyle(color: Colors.white)),
				backgroundColor: Colors.indigo,
				elevation: 10,				
			),
			floatingActionButton: Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			  children: [
			    FloatingActionButton(
			    	onPressed: () {
							if(currentCounter > 0) {
			    			currentCounter--;
							}
			    		setState(() { });
			    	},
			    	backgroundColor: Colors.indigo,
			    	child: Icon(Icons.exposure_minus_1, color: Colors.white,),
			    ),
					// SizedBox(width: 40,),
					FloatingActionButton(
			    	onPressed: (){
			    		currentCounter = 0;
			    		setState(() { });
			    	},
			    	backgroundColor: Colors.indigo,
			    	child: Icon(Icons.refresh_outlined, color: Colors.white,),
			    ),					
					// SizedBox(width: 40,),
					FloatingActionButton(
			    	onPressed: (){
			    		currentCounter++;
			    		setState(() { });
			    	},
			    	backgroundColor: Colors.indigo,
			    	child: Icon(Icons.plus_one, color: Colors.white,),
			    )
			  ],
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