// ignore_for_file: unused_local_variable, dead_code

void main() {
	// ⛓️ Strings
	var name = 'Tony';
	var lastName = 'Stark';
	String nickname = 'Ironman';
	final String team = 'The Avengers';
	const motto = 'I am Ironman!';

	print('$name $lastName is $nickname, founder of $team and his motto is: $motto');

	// 🔢 Numbers
	int employees = 10;
	double salary = 2222.22;

	//  Boolena
	bool isActive = true;
	if(isActive) {
		print('Is Active');
	} else {
		print('Is Innactive');
	}

	bool? isPaid = null;
	if(isPaid == null) {
		print('isPaid is null');
	} else {
		print('isPaid is not null');
	}

	// 📋 List
	List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
	List? possitions = null;

	numbers.add(11);
	numbers.add('Name');
	print(numbers[0]);

	List<int> sequences = [1, 2, 3, 4];
	final queue = List.generate(100, (int index) => index);

	// 🗺️ Map
	Map person = {
		'name': 'Juan',
		'age': 36,
		'isSingle': false,
		true: false,
		1: 100,
		2: 500
	};

	print(person['name']); // Juan 
	print(person['isSingle']); 
	print(true); // false
	print(2); // 500

	person.addAll({ 3: 'Carlos'});

	Map<String, String> capitals = {
		'Nicaragua': 'Managua',
		'Spain': 'Madrid',
		'United State of America': 'Washington DC',
		'Argentina': 'Buenos Aires'
	};

	// 🏭 Functions
	void grettings([String name = 'No name'] ) {
		print('Hello word! $name');
	}

	grettings('Juan');
	grettings();

	void grettins2({
		String name = 'No name', 
		String? message
	}) {
		print('Hi! $name');
	}

	grettins2(name: 'Santiago');

	void grettins3({
		required String name, 
		required String? message
	}) {
		print('Hi! $name');
	}
}