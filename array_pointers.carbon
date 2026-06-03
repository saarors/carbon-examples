import Core library "io";
import Core library "range";

fn print_array(arr : array(i32, 4)) {
	var s : i32 = 4;
	for (i : i32 in Core.Range(s)) {
		Core.Print(arr[i]);
	}
}

fn Run() -> i32 {
	// Static arrays
	var ai : array(i32, 4) = (1, 2, 3, 4);
	print_array(ai);
	// TODO Dynamic arrays example once they are supported

	// Array indexing with [] operator
	var i : i32 = ai[3];
	Core.Print(i);

	// Pointers
	var j : i32 = 4;
	var pj : i32* = &j;
	Core.PrintStr("*pj = ");
	Core.Print(*pj);
	// TODO Print the address of a pointer
	// Core.PrintStr("pj = ");
	// Core.Print(pj);

	// Emulate null pointer
	var l : i32 = 3;
	var iptr : Core.Optional(i32*) = Core.Optional(i32*).None();
	iptr = Core.Optional(i32*).Some(&l);
	Core.PrintStr("Optional ptr =");
	if (iptr.HasValue()) {
		var v : i32* = iptr.Get();
		Core.Print(*v);
	}

	// TODO Manual/dynamic arrays

	return 0;
}
