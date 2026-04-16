import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
	int _selectedTabOption = 1;

	int get selectedMenuOption {
		return _selectedTabOption;
	}

	set selectedMenuOption(int index) {
		_selectedTabOption = index;
		notifyListeners();
	}
}