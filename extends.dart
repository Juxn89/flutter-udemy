void main() {
	// It's not possible to instantiate an abstract class
	// final superman = new Character('Clark Kent');

	final superman = new Hero('Clark Kent');
	print(superman.name);

	final luthor = new Hero('Lex Luthor');
	print(luthor);
}

abstract class Character {
	String? power;
	String name;

	Character(this.name);

	@override
	String toString() {
		return '$name - $power';
	}
}

class Hero extends Character {
	int bravery = 100;
	Hero(String name): super(name);
}

class Villian extends Character {
	int evildoing = 0;

	Villian(String name): super(name);
}