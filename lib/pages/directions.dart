import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class Directions extends StatelessWidget {
	const Directions({super.key});

	@override
	Widget build(BuildContext context) {		
		return ScanTiles(scanType: 'http');
	}
}