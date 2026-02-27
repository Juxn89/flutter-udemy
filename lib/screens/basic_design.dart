import 'package:flutter/material.dart';

class BasicDesigScreen extends StatelessWidget {
	 
	const BasicDesigScreen({super.key});
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				children: [
					Image(image: AssetImage('assets/landscape.jpg'),),
					Title(),
					ButtonSection(),
					Container(
						margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
						child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta sapien sed erat auctor posuere. Maecenas sit amet commodo ipsum, in consequat elit. Suspendisse potenti. Sed quam magna, fringilla non lacinia quis, malesuada sit amet velit. Aenean tempor accumsan diam, sit amet venenatis ligula rutrum ut. Nunc non pulvinar leo, vitae laoreet ligula. Suspendisse id dui sapien.')
					)
				],
			)
		);
	}
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
			margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
			child: Row(
				children: [
					Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
									Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey),)
								]
							),
					Expanded(child: Container()),
					Icon(Icons.star, color: Colors.red,),
					Text('41')
				],
			),
		);
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
			margin: EdgeInsets.symmetric(horizontal: 40),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: [
					ButtonOption(icon: Icons.call, text: 'CALL'),
					ButtonOption(icon: Icons.send, text: 'ROUTE'),
					ButtonOption(icon: Icons.share, text: 'SHARE'),
				],
			),
		);
  }
}

class ButtonOption extends StatelessWidget {
	final IconData icon;
	final String text;

  const ButtonOption({
    super.key,
		required this.icon,
		required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(

			spacing: 5,
    	children: [
    		Icon(icon, color: Colors.blue.shade400, size: 30, ),
    		Text(text, style: TextStyle(color: Colors.blue.shade400, fontSize: 15),)
    	]
    );
  }
}