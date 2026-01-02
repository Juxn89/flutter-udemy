import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    	child: Column(
    		children: [
    			ListTile(
    				title: Text('Card Title'), 
    				leading: Icon(Icons.photo_album, color: AppTheme.primary,),
    				subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ornare id nibh et faucibus. Phasellus tellus massa, varius non leo vitae, luctus consectetur nunc. Curabitur eget ultrices sem, at mattis.'),
    			),
					Padding(
						padding: const EdgeInsets.only(right: 8.0),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.end,
							children: [
								TextButton(
									onPressed: () {},
									child: Text('Cancel')
								),
								TextButton(
									onPressed: () {},
									child: Text('Show')
								)
							],
						),
					)
    		],
    	),
    );
  }
}