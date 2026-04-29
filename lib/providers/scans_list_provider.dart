import 'package:flutter/foundation.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
	List<ScanModel> scans = [];
	String currentSelectedScanType = 'http';

	newScan(String value) async {
		final newScan = new ScanModel(value: value);
		final id = await DBProvider.db.newScan(newScan);
		newScan.id = id;

		if(this.currentSelectedScanType == newScan.type) {
			this.scans.add(newScan);
			notifyListeners();
		}
	}

	loadScans() async {
		final scans = await DBProvider.db.getScans();
		this.scans = [...scans];
		notifyListeners();
	}

	loadScansByType(String type) async {
		final scans = await DBProvider.db.getScansByType(type);
		this.scans = [...scans];
		this.currentSelectedScanType = type;
		notifyListeners();}

	deleteAll() async {
		await DBProvider.db.deleteScanDatabase();
		this.scans = [];
		notifyListeners();
	}

	deleteById(int id) async {
		await DBProvider.db.deleteScan(id);
		await this.loadScansByType(this.currentSelectedScanType);
	}
}