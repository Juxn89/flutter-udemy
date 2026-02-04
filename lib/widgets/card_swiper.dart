import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
		final size_screen = MediaQuery.of(context).size;

    return Container(
			width: double.infinity,
			height: size_screen.height * 0.5,
			child: Swiper(
				itemCount: 10,
				layout: SwiperLayout.STACK,
				itemWidth: size_screen.width * 0.6,
				itemHeight: size_screen.height * 0.4,
				itemBuilder: (BuildContext context, int index) {
					return GestureDetector(
						onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
						child: ClipRRect(
							borderRadius: BorderRadius.circular(20),
							child: FadeInImage(
								placeholder: AssetImage('lib/assets/no-image.jpg'), 
								image: NetworkImage('https://placehold.co/300x400.png'),
								fit: BoxFit.cover,
							),
						),
					);
				},
			),
		);
  }
}