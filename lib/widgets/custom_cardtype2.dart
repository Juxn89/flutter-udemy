import 'package:flutter/material.dart';
import 'package:components_app/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
	final String imageUrl;
	final String? imageTitle;

  const CustomCardType2({
    super.key,
		this.imageTitle,
		required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    	elevation: 10,
			clipBehavior: Clip.antiAlias,
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(18)
			),
			shadowColor: AppTheme.primary.withValues(alpha: 0.5),
			child: Column(				
				children: [
					FadeInImage(
						image: NetworkImage( imageUrl ), 
						placeholder: AssetImage('assets/jar-loading.gif'),
						width: double.infinity,
						height: 230,
						fit: BoxFit.cover,						
						fadeInDuration: Duration(milliseconds: 300),
					),

					if(imageTitle != null)
						Container(
							alignment: AlignmentDirectional.centerEnd,
							padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
							child: Text( imageTitle! ),
						)
				],
			),
    );
  }
}