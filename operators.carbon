import Core library "io";
import Core library "range";

fn PrintBool(x : bool) {
	if (x) {
		Core.PrintStr("true\n");
	} else {
		Core.PrintStr("false\n");
	}
}

// Main function
fn Run() -> i32 {
	// Binary and assignment operators
	var i : i32 = 1 + 4 - 2;
	i *= 3;
	i /= 2;
	i = 23 % i;
	Core.Print(i);
	// Increment, decrement oeprators
	var j : i32 = 0;
	Core.Print(j);
	// This doesn't work
	// j++;
	// TODO This should work with operator ++ and --
	// var k : i32 = ++i;
	// var l : i32 = i++;
	// var m : i32 = --i;
	// var n : i32 = i--;

	// Bitwise operators
	var ii : u32 = 0xEE & 0x55;
	ii |= 0xEE;
	ii ^= 0x55;
	// TODO THis should work
	// var jj : u32 = ~0xEE;
	var kk : u32 = 0x1F << 3;
	var ll : u32 = 0x1F >> 2;

	// Logical operators
	var a : bool = true;
	var b : bool = false;
	var c : bool = a and b;
	PrintBool(c);
	var d : bool = a or b;
	PrintBool(d);
	var e : bool = not d;
	PrintBool(e);

	// Comparison operators
	var ba : bool = (3 == 3);
	PrintBool(ba);
	var bb : bool = (3 != 3);
	PrintBool(bb);
	var bc : bool = (4 < 4);
	PrintBool(bc);
	var bd : bool = (4 <= 4);
	PrintBool(bd);
	var be : bool = (4 > 4);
	PrintBool(be);
	var bf : bool = (4 >= 4);
	PrintBool(bf);

	return 0;
}
