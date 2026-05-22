class RegexValidator {
	static String _emailPattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 
	static bool isEmail(String value) {
		RegExp regExp  = RegExp(_emailPattern);
		return regExp.hasMatch(value);
	}
}