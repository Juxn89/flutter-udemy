import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

	final boxDecoration = BoxDecoration(
		gradient: LinearGradient(
			begin: Alignment.topCenter,
			end: Alignment.bottomCenter,
			stops: [0.5, 0.5],
			colors: [
			Color(0xff79ECCB),
			Color(0xff50C2DD),
		])
	);
		
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				decoration: boxDecoration,
				child: PageView(
					physics: BouncingScrollPhysics(),
					scrollDirection: Axis.vertical,
					children: [
						InitialPage(),
						SecondPage()
					],
				),
			),
		);
	}
}

class InitialPage extends StatelessWidget {
  const InitialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
    	children: [
    		Background(),
    		MainContent()
    	],
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
			color: Color(0xff50C2DD),
			child: Center(
				child: TextButton(
					onPressed: (){}, 
					style: TextButton.styleFrom(
						backgroundColor: Color(0xff0098fa),
						shape: StadiumBorder()
					),
					child: Padding(
						padding: EdgeInsets.symmetric(horizontal: 50,),
						child: Text('Welcome!', style: TextStyle(color: Colors.white, fontSize: 30),),
					),
				),
			),
		);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
			bottom: false,
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.center,
				children: [
					SizedBox(height: 10,),
					Text('11°', style: textStyle,),
					Text('Wednesday', style: textStyle),
					Expanded(child: Container()),
					Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
				],
			),
		);
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
			color: Color(0xff50C2DD),
			height: double.infinity,
			alignment: Alignment.topCenter,
			child: Image(image: AssetImage('assets/scroll-1.png'),));
  }
}