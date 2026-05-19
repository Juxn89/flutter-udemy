import 'package:flutter/material.dart';
import 'package:userpreferences/screens/screens.dart';

class SideMenu extends StatelessWidget {
	const SideMenu({super.key});

	@override
	Widget build(BuildContext context) {
		return Drawer(
			child: ListView(
				padding: EdgeInsets.zero,
				children: [
					_DrawerHeader(),
					ListTile(
						leading: Icon(Icons.pages_outlined),
						title: Text('Home'),
						onTap: () {
							Navigator.pushReplacementNamed(context, HomeScreen.routername);
						},
					),
					ListTile(
						leading: Icon(Icons.people_outlined),
						title: Text('People'),
						onTap: () { },
					),
					ListTile(
						leading: Icon(Icons.settings_outlined),
						title: Text('Settings'),
						onTap: () {
							Navigator.pushReplacementNamed(context, SettingsScreen.routername);
						},
					)
				],
			),
		);
	}
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
    	child: Container(),
    	decoration: BoxDecoration(
    		image: DecorationImage(
    			image: AssetImage('assets/images/drawer_image.jpg'),
    			fit: BoxFit.cover
    		)
    	),
    );
  }
}