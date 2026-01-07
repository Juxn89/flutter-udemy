import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
	 
	const InputScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Inputs & Forms'),
			),
			body: Center(
				 child: SingleChildScrollView(
					child: Padding(
						padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
						child: Column(
							children: [
								CustomInputField(label: 'Custon name', helperText: 'Custom helper text', hintText: 'Custom hintText',),
								SizedBox(height: 30,),

								CustomInputField(label: 'Lastname', helperText: 'User lastname', hintText: 'Lastname',),
								SizedBox(height: 30,),

								CustomInputField(label: 'Email', helperText: 'User email', hintText: 'Email', textInputType: TextInputType.emailAddress, ),
								SizedBox(height: 30,),

								CustomInputField(label: 'Password', helperText: 'Password', hintText: 'Password', obscureText: true, ),
								SizedBox(height: 30,),
							],
						),
					),
				 ),
			),
		);
	}
}

