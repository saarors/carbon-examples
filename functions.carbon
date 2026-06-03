import Core library "io";
import Core library "range";

// A function with return type
fn Square(a : i32) -> i32 {
	return a * a;
}

// Multiple parameters
fn Mult(a : i32, b : i32) -> i32 {
	return a * b;
}

// Function with no return
fn Log(msg : Core.String) {
	Core.PrintStr(msg);
}

// No parameter
fn Hello() {
	Core.PrintStr("Hello World!");
}

// TODO Default argument
// fn Add(a : i32, b : i32 = 2) -> i32 {
//	return a + b;
// }

class BigClass {
	var value : i32;

	fn Make(x : i32) -> Self {
		return {.value = x};
	}
}

// Pass by value
fn PrintVal(p : BigClass) {
	Core.Print(p.value);
}

// Pass by reference
fn PrintRef(ref p : BigClass) {
	Core.Print(p.value);
}

// Pass a struct by value
fn ChangeVal(p : {.a : i32}) {
	// TODO Expression not assignable
	// p.a = 2;
}

fn ChangeRef(ref q : {.a : i32}) {
	q.a = 2;
}

class T{
	var value : i32;
	fn Make(x : i32) -> Self {return {.value = x};}
}

fn FVal(v : T) {
	Core.Print(v.value);
}

// TODO const reference to have FRef(const ref v : T)

fn FWrite(ref v : T) {
	Core.Print(v.value);
}

fn FPtr(v : T*) {
	Core.Print(v->value);
}

// TODO Functions overloading
// fn Sum(a : i32) -> i32 { return a;}
// fn Sum(a : i32, b : i32) -> i32 {return a+b;}

// Main function
fn Run() -> i32 {
	// Variable with var
	var result : i32 = Square(2);
	Core.Print(result);
	// Constant with let
	let temp : i32 = Square(2);
	Core.Print(temp);


	var p : BigClass  = BigClass.Make(3);
	PrintVal(p);
	PrintRef(ref p);

	var s : {.a : i32} = {.a = 1};
	ChangeVal(s);
	Core.Print(s.a);
	// TODO Bug to report
	// ChangeRef(ref s);
	Core.Print(s.a);

	var a : T = T.Make(10);
	FVal(a);
	FWrite(ref a);
	FPtr(&a);

	return 0;
}
