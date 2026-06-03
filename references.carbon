import Core library "io";
import Core library "range";

fn Assign(ref x : i32, y : i32) {
	x = y;
}

fn Run() -> i32 {
	var i : i32 = 1;
	Assign(ref i, 2);
	Core.Print(i);

	// TODO Make this work
	// var j : ref i32 = ref i;
	// Core.Print(j);

	// Const reference to a member
	var a : {.x : i32, .y : i32} = {.x = 0, .y = 0};
	// TODO Create x = ref a.x
	a.x = 4;

	return 0;
}
