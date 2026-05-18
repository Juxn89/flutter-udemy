import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart' show FlutterBarcodeScanner, ScanMode;
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scans_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
			elevation: 0,
			child: Icon(Icons.filter_center_focus),
			onPressed: () async {
				final bool isEmulatorDevice = await isRunningOnEmulator();
				final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

				if(isEmulatorDevice) {
					final barcodeScanRes = 'https://www.juangomezb.com/';

					if(barcodeScanRes == '-1') return;

					scanListProvider.newScan('https://www.juangomezb.com/');
					scanListProvider.newScan('https://www.as.com/');
					scanListProvider.newScan('https://www.rockstargames.com/');
					scanListProvider.newScan('geo:12.149439,-86.3006155'); // Marbelly Salon
					scanListProvider.newScan('geo:40.4530237,-3.6909497'); // Santiago Bernabeu Stadium
					final newScan = await scanListProvider.newScan('geo:40.7258964,-73.9960802'); // Rockstar Games Building

					launchScanUrl(context, newScan);
				}
				else {
					String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3d8be', 'Cancel', true, ScanMode.QR);

					if(barcodeScanRes == '-1') return;

					final newScan = await scanListProvider.newScan(barcodeScanRes);
					launchScanUrl(context, newScan);
				}
			},
		);
  }
}