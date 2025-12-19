import 'dart:math' as math;

void main() {
	final square = new Square(10);
	print('Area: ${ square.calculateArea() }');
	print('Area (get): ${ square.area }');
}

class Square {
	double side = 0;

	double get area {
		return this.side * this.side;
	}

	set area(double value) {
		this.side = math.sqrt(value);
	}

	Square(double side):
		this.side = side;

	double calculateArea() {
		return this.side * this.side;
	}
}