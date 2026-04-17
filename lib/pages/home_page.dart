import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
	 
	const HomePage({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('History'),
				elevation: 0,
				actions: [
					IconButton(
						onPressed: (){}, 
						icon: Icon(Icons.delete_forever))
				],
			),
			body: _HomePageBody(),
			bottomNavigationBar: CustomNavigationBart(),
			floatingActionButton: ScanButton(),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
		);
	}
}

class _HomePageBody extends StatelessWidget {
	const _HomePageBody({super.key});

	@override
	Widget build(BuildContext context) {
		final uiProvider = Provider.of<UiProvider>(context);
		final currentTabSelected = uiProvider.selectedMenuOption;

		final tempNewScan = new ScanModel(value: 'https://juangomezb.com');
		DBProvider.db.newScan(tempNewScan);

		switch(currentTabSelected) {
			case 0:
				return MapsHistory();
			case 1:
				return Directions();
			default:
				return MapsHistory();
		}
	}
}