import Core library "io";
import Core library "range";

// if else
fn Collatz(a : i32) -> i32 {
	if (a <= 0) {
		Core.PrintStr("Not supported\n");
		return 0;
	} else if (a == 1) {
		return 1;
	} else if (a % 2 == 0) {
		return Collatz(a / 2);
	} else {
		return Collatz(3*a + 1);
	}
}


// Main function
fn Run() -> i32 {

	var i : i32 = Collatz(10);
	Core.Print(i);


	// TODO switch case

	// For loop
	for (var x : i32 in Core.Range(10)) {
		var y : i32 = Collatz(x+1);
		Core.Print(y);
	}

	var j : i32 = 10;
	var k : i32 = 0;
	Core.PrintStr("While loop count\n");
	while (k < j) {
		Core.Print(k);
		k += 1;
	}

	return 0;
}
