void main() {
	final dog = new Dog();
	animalSound(dog);

	final cat = new Cat();
	animalSound(cat);
}

void animalSound(Annimal annimal) {
	annimal.makeSound();
}

abstract class Annimal {
	int? paws;

	Anima();

	void makeSound();
}

class Dog implements Annimal {
	@override
	int? paws;

	@override
	Anima() {
		// TODO: implement Anima
		throw UnimplementedError();
	}

	@override
	void makeSound() => print('Guauuuuuuuuu! 🐶');
}

class Cat implements Annimal {
	int? whiskers;
	@override
	int? paws;

	@override
	Anima() {
		// TODO: implement Anima
		throw UnimplementedError();
	}

	@override
	void makeSound() {
		print('Miauuuuuu! 🐈‍⬛');
	}

}