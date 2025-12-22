abstract class Animal { }

abstract class Mammal extends Animal { }
abstract class Bird extends Animal { }
abstract class Fish extends Animal { }

mixin Fliying { 
	void fly () => print("I'm fliying");
}

mixin Walker {
	void walk () => print("I'm walking");
}

mixin Swimming {
	void swim () => print("I'm swimming");
}

class Dolphin extends Mammal with Swimming { }

class Bat extends Mammal with Walker, Fliying { }

class Cat extends Mammal with Walker { }

class Dove extends Bird with Fliying { }

class Duck extends Bird with Fliying, Fliying, Swimming { }

class Shark extends Fish with Swimming { }

void main() {
	final flipper = new Dolphin();
	flipper.swim();

	final nosferatus = new Bat();
	nosferatus.fly();
	nosferatus.walk();
}