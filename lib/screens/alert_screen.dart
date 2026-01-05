import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
	 
	const AlertScreen({Key? key}) : super(key: key);

	void displayDialogAndroid(BuildContext context) {
		showDialog(
			barrierDismissible: true,
			context: context, 
			builder: (context) {
				return AlertDialog(
					elevation: 5,
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
					title: Text('My title'),
					content: Column(
						mainAxisSize: MainAxisSize.min,
						children: [
							Text('This is the content of the alert'),
							SizedBox(height: 10),
							FlutterLogo(size: 80,)
						],
					),
					actions: [
						TextButton(
							onPressed: () => Navigator.pop(context), 
							child: Text('Cancel', style: TextStyle(color: Colors.red),)
						),
						TextButton(
							onPressed: () => Navigator.pop(context), 
							child: Text('Cancel')
						)
					],
				);
			}
		);
	}
	
	void displayDialogIOS(BuildContext context) {
		showCupertinoDialog(
			context: context,
			barrierDismissible: true,
			builder: (context) {
				return CupertinoAlertDialog(
					title: Text('Ttile - iOS'),
					content: Column(
						mainAxisSize: MainAxisSize.min,
						children: [
							Text('This is the content of the alert using Cupertino iOS'),
							SizedBox(height: 10),
							FlutterLogo(size: 80,)
						],
					),
					actions: [
						TextButton(
							onPressed: () => Navigator.pop(context), 
							child: Text('Cancel', style: TextStyle(color: Colors.red),)
						),
						TextButton(
							onPressed: () => Navigator.pop(context), 
							child: Text('Ok')
						)
					],
				);
			}
		);
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.close),
				onPressed: () {
					Navigator.pop(context);
				}
			),
			body: Center(
				 child: ElevatedButton(
					style: ElevatedButton.styleFrom(						
						backgroundColor: Colors.teal.shade800,
						foregroundColor: Colors.white,
						shape: StadiumBorder(),
						elevation: 0
					),
					onPressed: () => Platform.isAndroid 
						? displayDialogAndroid(context)
						: displayDialogIOS(context), 
					child: Padding(
						padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
						child: Text('Show alert', style: TextStyle(fontSize: 16),),
					)
				),
			),
		);
	}
}