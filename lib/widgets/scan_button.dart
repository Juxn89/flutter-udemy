import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scans_list_provider.dart';

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
					final barcodeScanRes = 'https://juangomezb.com';
					final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

					scanListProvider.newScan(barcodeScanRes);
					scanListProvider.newScan(barcodeScanRes);
					scanListProvider.newScan(barcodeScanRes);
					scanListProvider.newScan('geo:26.90.90.98');
					scanListProvider.newScan('geo:16.80.80.88');
					scanListProvider.newScan('geo:15.89.89.87');
			},
		);
  }
}