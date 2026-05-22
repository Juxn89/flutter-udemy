import 'package:flutter/material.dart';
import 'package:productsapp/helpers/regex.dart';
import 'package:productsapp/ui/input-decoratios.dart';
import 'package:productsapp/widgets/widtgets.dart';

class LoginScreen extends StatelessWidget {
	 
	const LoginScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				 child: AuthBackground(
					child: SingleChildScrollView(						
						child: Column(
							children: [
								SizedBox(height: 250,),
								CardContainer(
									child: Column(
										children: [
											SizedBox(height: 10),
											Text('Login', style: Theme.of(context).textTheme.headlineMedium,),
											SizedBox(height: 30),
											_LoginForm()
										],
									)
								),

								SizedBox(height: 50),
								Text('Create an account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
								SizedBox(height: 50),
							],
						)
					)
				 )
			),
		);
	}
}

class _LoginForm extends StatelessWidget {
	const _LoginForm({super.key});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Form(
				autovalidateMode: AutovalidateMode.onUserInteraction,
				child: Column(
					children: [

						TextFormField(
							autocorrect: false,
							keyboardType: TextInputType.emailAddress,
							decoration: InputDecorations.authInputDecoration(
								hintText: 'john.doe@email.com', 
								labelText: 'Email', 
								prefixtIcon: Icons.alternate_email_sharp
							),
							validator: (value) => RegexValidator.isEmail(value ?? '') ? null : 'Email is not correct.'
						),

						SizedBox(height: 30,),

						TextFormField(
							autocorrect: false,
							obscureText: true,
							keyboardType: TextInputType.emailAddress,
							decoration: InputDecorations.authInputDecoration(
								hintText: '**********', 
								labelText: 'Password', 
								prefixtIcon: Icons.lock_outline
							),
							validator: (value) {
								if(value != null && value.length >= 6) return null;

								return 'Password must be at least 6 characters.';
							},
						),
						
						SizedBox(height: 30,),

						MaterialButton(
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.circular(10)
							),
							disabledColor: Colors.grey,
							color: Colors.deepPurple,
							child: Container(
								padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
								child: Text(
									'Sign in',
									style: TextStyle(color: Colors.white),
								),
							),
							onPressed: () { }
						)
					],
				)
			),
		);
	}
}