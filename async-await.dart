void main() async{
	print("Before of the request");

	// httpGet("http://api.nasa.com/aliens")
	// 	.then((response) {
	// 		print(response.toUpperCase());
	// 	});

	print( getName("10") );
	final name = await getNameFuture("5");
	print(name);

	final response = await httpGet('https://api.nasa.com/aliens');

	print("End of the program");
}

Future<String> httpGet(String url) {
	return Future.delayed(Duration(seconds: 3), () {
		return "Hello word with 3 sec of delay";
	} );
}

String getName(String id) {
	return '$id - Juan';
}

Future<String> getNameFuture(String id) async {
	return '$id - Juan';
}