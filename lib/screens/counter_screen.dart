import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
	int currentCounter = 0;
	void increase () {
		currentCounter++;
		setState(() { });
	}

	void decrease() {
		currentCounter--;
		setState(() { });
	}

	void reset() {
		currentCounter = 0;
		setState(() { });
	}

	@override
	Widget build(BuildContext context) {
		const fontSize30 = TextStyle(fontSize: 30);
		return Scaffold(
			appBar: AppBar(
				title: Text('Counter Screen', style: TextStyle(color: Colors.white)),
				backgroundColor: Colors.indigo,
				elevation: 10,				
			),
			floatingActionButton: CustomFlottingActions(increaseFn: increase, decreaseFn: decrease, resetFn: reset,),
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

class CustomFlottingActions extends StatelessWidget {
	final Function increaseFn;
	final Function decreaseFn;
	final Function resetFn;
	
  const CustomFlottingActions({
    super.key,
		required this.increaseFn,
		required this.decreaseFn,
		required this.resetFn
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    	mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
        	onPressed: () => decreaseFn(),
        	backgroundColor: Colors.indigo,
        	child: Icon(Icons.exposure_minus_1, color: Colors.white,),
        ),
    		// SizedBox(width: 40,),
    		FloatingActionButton(
        	onPressed: () => resetFn(),
        	backgroundColor: Colors.indigo,
        	child: Icon(Icons.refresh_outlined, color: Colors.white,),
        ),					
    		// SizedBox(width: 40,),
    		FloatingActionButton(
        	onPressed: () => increaseFn(),
        	backgroundColor: Colors.indigo,
        	child: Icon(Icons.plus_one, color: Colors.white,),
        )
      ],
    );
  }
}

void onPress() {
	print('Hello');
}