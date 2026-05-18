import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qr_reader/models/scan_model.dart';

class MapPage extends StatefulWidget {
	 
	const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
	Completer<GoogleMapController> _controller = Completer();
	MapType mapType = MapType.normal;
	
	@override
	Widget build(BuildContext context) {
		final args = ModalRoute.of(context)?.settings.arguments;

		if(args is! ScanModel) {
			return Center(child: Text('No scan data found'));
		}

		final ScanModel scan = args;

		final CameraPosition initialPoint = CameraPosition(
			// target: LatLng(12.1497208,-86.3013918), // Marbelly Salon
			target: scan.getLatLng(),
			zoom: 19.04,
		);
		
		// Markers
		Set<Marker> markers = new Set<Marker>();
		markers.add(new Marker(
			markerId: MarkerId('geo-location'),
			position: scan.getLatLng()
		));

		return Scaffold(
			appBar: AppBar(
				title: Text('Map'),
				actions: [
					IconButton(
						icon: Icon(Icons.my_location_outlined),
						onPressed: () async {
							final GoogleMapController controller = await _controller.future;
							controller.animateCamera(
								CameraUpdate.newCameraPosition(
									CameraPosition(target: scan.getLatLng(), zoom: 19.04)
								)
							);
						},
					)
				],
			),
			body: GoogleMap(
				myLocationButtonEnabled: false,
				mapType: mapType,
				markers: markers,
				initialCameraPosition: initialPoint,
				onMapCreated: (GoogleMapController controller) {
					_controller.complete(controller);
				}, 
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.layers),
				onPressed: () {
					if(mapType == MapType.normal) {
						mapType = MapType.satellite;
					}
					else {
						mapType = MapType.normal;
					}

					setState(() { });
				}
			),
		);
	}
}