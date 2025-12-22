void main() {
	print("Before of the request");

	httpGet("http://api.nasa.com/aliens")
		.then((response) {
			print(response.toUpperCase());
		});

	print("End of the program");
}

Future<String> httpGet(String url) {
	return Future.delayed(Duration(seconds: 3), () {
		return "Hello word with 3 sec of delay";
	} );
}