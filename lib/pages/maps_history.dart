import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scans_list_provider.dart';

class MapsHistory extends StatelessWidget {
	const MapsHistory({super.key});

	@override
	Widget build(BuildContext context) {
		final scanListProvider = Provider.of<ScanListProvider>(context);
		final scans = scanListProvider.scans;

		return ListView.builder(
			itemCount: scans.length,
			itemBuilder: (context, index) => ListTile(
				leading: Icon(Icons.alternate_email_outlined, color: Theme.of(context).primaryColor),
				title: Text(scans[index].value),
				subtitle: Text(scans[index].id.toString()),
				trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.grey,),
				onTap: () => print(scans[index].id),
			),
		);
	}
}