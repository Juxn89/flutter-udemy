void main() {
	final rawJson = {
		'name': 'Tony Stark',
		'mainPower': 'Money'
	};

	final ironman2 = new Hero(name: rawJson['name']!, mainPower: rawJson['mainPower']!);
	final iranman = Hero.fromJSon(rawJson);
	final wolverine = new Hero(name: 'Logan', mainPower: 'Regeneration');

	wolverine.name = 'Loga';
	wolverine.mainPower = 'Regeneration';

	print(wolverine.name);
	print(wolverine);
}

class Hero {
	String name;
	String mainPower;

	Hero({required this.name, required this.mainPower});

	Hero.fromJSon(Map<String, String> json):
		this.name = json['name'] ?? 'No name',
		this.mainPower = json['mainPower'] ?? 'No power';

	@override
	String toString() {
		return 'Hero: name: ${this.name}, power: ${this.mainPower}';
	}
}