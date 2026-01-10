import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
	 
	const InputScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
		final Map<String, String> formValues = {
			'first_name': 'Juan',
			'last_name': 'Gomez',
			'email': 'my_email@email.com',
			'password': '123456',
			'role': 'Admin'
		};

		return Scaffold(
			appBar: AppBar(
				title: Text('Inputs & Forms'),
			),
			body: Center(
				 child: SingleChildScrollView(
					child: Padding(
						padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
						child: Form(
							key: myFormKey,
							child: Column(
								children: [
									CustomInputField(label: 'Custon name', helperText: 'Custom helper text', hintText: 'Custom hintText', formProperty: 'first_name', formValue: formValues,),
									SizedBox(height: 30,),
							
									CustomInputField(label: 'Lastname', helperText: 'User lastname', hintText: 'Lastname', formProperty: 'last_name', formValue: formValues,),
									SizedBox(height: 30,),
							
									CustomInputField(label: 'Email', helperText: 'User email', hintText: 'Email', textInputType: TextInputType.emailAddress, formProperty: 'email', formValue: formValues, ),
									SizedBox(height: 30,),
							
									CustomInputField(label: 'Password', helperText: 'Password', hintText: 'Password', obscureText: true, formProperty: 'password', formValue: formValues, ),
									SizedBox(height: 30,),
							
									DropdownButtonFormField(
										items: [
											DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
											DropdownMenuItem(value: 'Superuser', child: Text('Superuser'),),
											DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
											DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
										], 
										onChanged: (value) {
											formValues['role'] = value ?? 'Admin';
										}
									),

									ElevatedButton(
										onPressed: (){
											// * Print form values
											//! Alert
											// Todo: Print form values

											FocusScope.of(context).requestFocus( FocusNode() );

											if(!myFormKey.currentState!.validate()) {
												print('Form is not valid');
												return;
											}
											print(formValues);
										}, 
										child: SizedBox(
											width: double.infinity,
											child: Center( child: Text('Save') ) ,
										)
									)
								],
							),
						),
					),
				 ),
			),
		);
	}
}

