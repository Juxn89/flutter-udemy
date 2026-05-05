import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class MapsHistory extends StatelessWidget {
	const MapsHistory({super.key});

	@override
	Widget build(BuildContext context) {
		return ScanTiles(scanType: 'geo');
	}
}