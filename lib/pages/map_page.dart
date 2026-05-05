import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';

class MapPage extends StatelessWidget {
	 
	const MapPage({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		final args = ModalRoute.of(context)?.settings.arguments;

		if(args is! ScanModel) {
			return Center(child: Text('No scan data found'));
		}

		final ScanModel scan = args;

		return Scaffold(
			appBar: AppBar(
				title: Text('Map'),
			),
			body: Center(
				 child: Text(scan.value),
			),
		);
	}
}