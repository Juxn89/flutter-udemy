import 'package:flutter/material.dart';

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
								TextFormField(
									autofocus: true,
									initialValue: 'Juan',
									textCapitalization: TextCapitalization.words,
									decoration: InputDecoration(
										hintText: 'User firstname',
										label: Text('Firstname'),
										helperText: 'Only words allowed',
										counterText: '3 Characters left',
										suffixIcon: Icon(Icons.group_outlined),
										prefix: Icon(Icons.verified_user_outlined),
										icon: Icon(Icons.assignment_ind_outlined),
										focusedBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Colors.green
											)
										),
										border: OutlineInputBorder(
											borderRadius: BorderRadius.only(
												bottomLeft: Radius.circular(10),
												bottomRight: Radius.circular(10)
											)
										)
									),
									onChanged: (value) {
										print('Value: $value');
									},
									// autovalidateMode: AutovalidateMode.always,
									autovalidateMode: AutovalidateMode.onUserInteraction,
									validator: (value) {
										if(value == null)
											return 'This field is required';
										
										if(value.length < 3)
										return 'At least 3 characters';

										return null;
									},
								)
							],
						),
					),
				 ),
			),
		);
	}
}