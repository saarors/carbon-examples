import Core library "io";
import Core library "range";

fn print(i : i32) {
	Core.PrintStr("Hello, World ");
	Core.Print(i);
}

fn Run() -> i32 {
	let n : i32 = 3;
	for (var i : i32 in Core.Range(n)) {
		print(i);
	}
	return 0;
}
