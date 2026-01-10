import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
	 
	const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
	double _sliderValue = 10;
	double _sliderValueAdaptative = 10;
	bool _sliderEnabled = true;
	bool _sliderEnabledCheckBoxListTitle = true;
	bool _switchValue = true;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Sliders & Checks'),
			),
			body: Center(
				 child: Column(
				 	children: [
				 		Slider(
				 			min: 0,
				 			max:400,
				 			activeColor: AppTheme.primary,
				 			divisions: 10,
				 			value: _sliderValue, 
				 			onChanged: _sliderEnabled ? (value) {
				 				print('Currente Slider value: $value');
				 				_sliderValue = value;
				 				setState((){});
				 			} : null
				 		),
				 		
				 		// Adapt the style depending on the OS
				 		Slider.adaptive(
				 			min: 0,
				 			max:100,
				 			activeColor: AppTheme.primary,
				 			divisions: 10,
				 			value: _sliderValueAdaptative, 
				 			onChanged: _sliderEnabled ? (value) {
				 				print('Currente Slider value: $value');
				 				_sliderValueAdaptative = value;
				 				setState((){});
				 			} : null
				 		),

						Checkbox(
							value: _sliderEnabled, 
							onChanged: (value){
								_sliderEnabled = value ?? true;
								setState(() { });
							}
						),

						Checkbox(
							value: _sliderEnabled, 
							onChanged: null
						),

						CheckboxListTile(
							title: Text('Enable slider'),
							activeColor: AppTheme.primary,
							value: _sliderEnabledCheckBoxListTitle, 
							onChanged: (value) => setState((){ _sliderEnabledCheckBoxListTitle = value ?? true; })
						),

						Switch(
							value: _switchValue, 
							onChanged: (value) => setState((){ _switchValue = value; })
						),

						// Adapt the style depending of the OS
						Switch.adaptive(
							value: _switchValue, 
							onChanged: (value) => setState((){ _switchValue = value; })
						),

						SwitchListTile(
							title: Text('Enable Slider'),
							activeThumbColor: AppTheme.primary,
							value: _switchValue, 
							onChanged: (value) => setState((){ _switchValue = value; })
						),
				 		
						AboutListTile(),

				 		Expanded(
							child: SingleChildScrollView(
								child: Image(
									image: NetworkImage('https://wallpapers.com/images/hd/elretrato-de-batman-2022-dtny6lc5o1vx3vlo.jpg'),
									fit: BoxFit.contain,
									width: _sliderValue,
								),
							),
						)
				 	],
				 ),
			),
		);
	}
}