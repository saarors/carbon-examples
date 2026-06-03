package Vector;

import Core library "io";

class Vec{
	private var n : i32;

	fn Make(n : i32) -> Self {
		return {.n = n};
	}

	fn PrintSize[self : Self]() {
		Core.Print(self.n);
	}
}
