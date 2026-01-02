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
					CustomCardType2(imageUrl: 'https://wallpapers.com/images/hd/mortal-kombat-sub-zero-2880-x-1800-wallpaper-pgui67gyf1z6p34z.jpg', imageTitle: 'Sub Zero',),
					SizedBox(height: 10),
					CustomCardType2(imageUrl: 'https://4kwallpapers.com/images/wallpapers/sub-zero-scorpion-2880x1800-17601.jpg', imageTitle: 'Sub Zero VS Scorpion',),
					SizedBox(height: 10),
					CustomCardType2(imageUrl: 'https://4kwallpapers.com/images/wallpapers/scorpion-mortal-kombat-11-black-background-playstation-4-3840x2160-1560.jpg', imageTitle: 'Scorpion',)
				],
			)
		);
	}
}

