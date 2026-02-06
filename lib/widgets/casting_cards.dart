import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
	const CastingCards({super.key});

	@override
	Widget build(BuildContext context) {
		return Container(
			width: double.infinity,
			height: 180,
			margin: EdgeInsets.only(bottom: 30),
			child: ListView.builder(
				itemCount: 10,
				scrollDirection: Axis.horizontal,
				itemBuilder: (BuildContext context, int index) {
					return _CastCard();
				},
			),
		);
	}
}

class _CastCard extends StatelessWidget {
	const _CastCard({super.key});

	@override
	Widget build(BuildContext context) {
		return Container(
			width: 110,
			height: 100,
			margin: EdgeInsets.symmetric(horizontal: 10),
			child: Column(
				children: [
					ClipRRect(
						borderRadius: BorderRadius.circular(20),
						child: FadeInImage(
							placeholder: AssetImage('lib/assets/no-image.jpg'), 
							image: NetworkImage('https://picsum.photos/seed/product/150/300'),
							height: 140,
							width: 100,
							fit: BoxFit.cover,
						),
					),
					SizedBox(height: 5,),
					Text('actor.name', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
				],
			),
		);
	}
}