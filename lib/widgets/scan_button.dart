import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart';

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

					print(barcodeScanRes);
			},
		);
  }
}