import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userpreferences/providers/theme_provider.dart';
import 'package:userpreferences/shared/preferences.dart';
import 'package:userpreferences/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
	static const String routername = 'Settings';
	 
	const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Settings'),
			),
			drawer: SideMenu(),
			body: SingleChildScrollView(
				 child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Text('Settings', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),

						Divider(),

						SwitchListTile.adaptive(
							value: Preferences.isDarkMode,
							title: Text('Darkmode'),
							onChanged: (value) { 
								Preferences.isDarkMode = value;

								final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
								value 
									? themeProvider.setDarkMode() 
									: themeProvider.setLightMode();
									
								setState(() { });
							}
						),

						Divider(),

						RadioGroup<int>(
							groupValue: Preferences.gender,
							onChanged: (value) {
								Preferences.gender = value ?? 1;
								setState(() { });
							}, 
							child: Row(
								children: [
									Expanded(
										child: ListTile(
											title: Text('Male'),
											leading: Radio<int>(value: 1),
										),
									),
									Expanded(
										child: ListTile(
											title: Text('Female'),
											leading: Radio<int>(value: 2),
										),
									),
								],
							)
						),

						Divider(),

						Padding(
							padding: EdgeInsets.symmetric(horizontal: 20),
							child: TextFormField(
								initialValue: Preferences.fullname,
								decoration: InputDecoration(
									labelText: 'Name',
									helperText: 'Full name'
								),
								onChanged: (value) {
									Preferences.fullname = value;
									setState(() { });
								},
							),
						)
					],
				 ),
			)
		);
	}
}