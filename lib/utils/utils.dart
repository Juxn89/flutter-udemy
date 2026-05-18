import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchScanUrl(BuildContext context, ScanModel scan) async {
	final String url = scan.value;

	if(scan.type == 'http') {
		final Uri uri = Uri.parse(url);
		if(!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
			throw Exception('Could not launch $url');
		}
	}
	else {
		Navigator.pushNamed(context, 'map', arguments: scan);
	}
}

  Future<bool> isRunningOnEmulator() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.isPhysicalDevice == false;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.isPhysicalDevice == false;
    }

    return false; // Default to false for unsupported platforms
  }