import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scans_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
			elevation: 0,
			child: Icon(Icons.filter_center_focus),
			onPressed: () async {
				// String barcodeScanRes = await 
					// FlutterBarcodeScanner.scanBarcode('#3d8be', 'Cancel', true, ScanMode.QR);
					final barcodeScanRes = 'https://www.juangomezb.com/';
					final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

					if(barcodeScanRes == '-1') return;

					scanListProvider.newScan('https://www.juangomezb.com/');
					scanListProvider.newScan('https://www.as.com/');
					scanListProvider.newScan('https://www.rockstargames.com/');
					scanListProvider.newScan('geo:40.4530196,-3.6909497');
					scanListProvider.newScan('geo:40.4397462,-3.4623751');
					final newScan = await scanListProvider.newScan('geo:40.7258964,-73.9960802');

					launchScanUrl(context, newScan);
			},
		);
  }
}