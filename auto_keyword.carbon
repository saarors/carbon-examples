import Core library "io";
import Core library "range";

fn PrintArray(v : array(i32, 4)) {
	Core.PrintStr("[\n");
	for (i : i32 in Core.Range(4)) {
		Core.Print(v[i]);
	}
	Core.PrintStr("]\n");
}

// Main function
fn Run() -> i32 {
	var v : array(i32, 4) = (1, 2, 3, 4);
	PrintArray(v);

	// TODO Use auto to infer variable type
	// var a : auto = v[3];

	// Infer auto type to be i32
	// var index : auto = 2;
	// Print(v[index]);

	// TODO access container
	// for (var x : auto in v) {
	//		Print(x);
	// }

	return 0;
}
