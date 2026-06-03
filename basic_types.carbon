import Core library "io";

fn Run() -> i32 {
	// Boolean true or false
	var b : bool = true;
	b = false;
	// Store ASCII characters
	var c : char = 'c';
	c = 'a';
	// 8 bit signed integers
	var c1 : i8 = -2;
	c1 = 2;
	// 8 bit unsigned integer
	var c2 : u8 = 2;
	c2 = 4;
	// String data type
	var s : Core.String = "This is a string";
	s = "Assign another string";
	var s_block : Core.String = '''
		This is
		a block string
		''';
	s_block = "This is another String";
	// 16 bits integers
	var d1 : i16 = -4;
	d1 = 4;
	var d2 : u16 = 4;
	d2 = 8;
	// 32 bits integers
	var d3 : i32 = -32;
	d3 = -42;
	var d4 : u32 = 32;
	d4 = 42;
	// 64 bit integers
	var d5 : i64 = -64;
	d5 = -10;
	var d6 : u64 = 64;
	d6 = 10;
	// 32 bits floating points
	var float : f32 = 3.14;
	float = 3.1415;
	// 64 bits floating points
	var double : f64 = 3.14;
	double = 3.1415;
	var double_exp : f64 = 3.14e-5;
	double_exp = 3.14e-1;
	// int in different bases
	var e_dec : i32 = 1234;
	e_dec = 42;
	var e_hexa : i32 = 0x4D;
	e_hexa = 0x3A;
	var e_bin : i32 = 0b1001;
	e_bin = 13;
	var e_digits : i32 = 123_456_789;
	e_digits = 123_456;
	// TODO Literals once they are supported.

	return 0;
}
