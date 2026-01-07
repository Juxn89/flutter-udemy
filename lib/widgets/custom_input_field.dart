import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
	final String? hintText;
	final String? label;
	final String? helperText;
	final IconData? icon;
	final IconData? suffixIcon;
	final TextInputType? textInputType;
	final bool obscureText;

  const CustomInputField({
    super.key, this.hintText, this.label, this.helperText, this.icon, this.suffixIcon, this.textInputType,
		this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    	autofocus: true,
    	initialValue: 'Juan',
			keyboardType: textInputType,
			obscureText: obscureText,
    	textCapitalization: TextCapitalization.words,
    	decoration: InputDecoration(
    		hintText: hintText,
    		label: Text('$label'),
    		helperText: helperText,
    		counterText: '3 Characters left',
    		suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
    		prefix: Icon(Icons.verified_user_outlined),
    		icon: icon == null ? null : Icon(icon),
    		// focusedBorder: OutlineInputBorder(
    		// 	borderSide: BorderSide(
    		// 		color: Colors.green
    		// 	)
    		// ),
    		// border: OutlineInputBorder(
    		// 	borderRadius: BorderRadius.only(
    		// 		bottomLeft: Radius.circular(10),
    		// 		bottomRight: Radius.circular(10)
    		// 	)
    		// )
    	),
    	onChanged: (value) {
    		print('Value: $value');
    	},
    	// autovalidateMode: AutovalidateMode.always,
    	autovalidateMode: AutovalidateMode.onUserInteraction,
    	validator: (value) {
    		if(value == null)
    			return 'This field is required';
    		
    		if(value.length < 3)
    		return 'At least 3 characters';
    
    		return null;
    	},
    );
  }
}