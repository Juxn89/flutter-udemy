import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/utils/utils.dart';

import '../providers/providers.dart';

class ScanTiles extends StatelessWidget {
	final String scanType;

	const ScanTiles({super.key, required this.scanType});

	@override
	Widget build(BuildContext context) {
		final scanListProvider = Provider.of<ScanListProvider>(context);
		final scans = scanListProvider.scans;

		return ListView.builder(
			itemCount: scans.length,
			itemBuilder: (context, index) => Dismissible(
				key: UniqueKey(),
				background: Container(
					color: Colors.red.shade700,
				),
				onDismissed: (DismissDirection direcction) {
					Provider.of<ScanListProvider>(context, listen: false)
						.deleteById(scans[index].id!);
				},
				child: ListTile(
					leading: Icon(
						scanType == 'http' 
							? Icons.place_outlined
							: Icons.alternate_email_outlined, 
						color: Theme.of(context).primaryColor
					),
					title: Text(scans[index].value),
					subtitle: Text(scans[index].id.toString()),
					trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.grey,),
					onTap: () => launchScanUrl(context, scans[index])
				),
			),
		);
	}
}