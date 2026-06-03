import Core library "io";
import Core library "range";

fn Run() -> i32 {
	// TODO alias Individual = {.age : char, .weight: f32};
	// It's not yet supported
	var student : {.age: i32, .weight : f32} = {.age = 25, .weight = 78.5};
	var teacher : {.age: i32, .weight : f32} = {.age = 25, .weight = 78.5};

	student.age = 18;
	student.weight = 50.0;

	teacher.age = 40;
	teacher.weight = 70.0;

	// Pointer to a struct
	var ptr : {.age: i32, .weight: f32}* = &student;
	ptr->age = 17;
	ptr->weight = 55.0;

	// Sum type, variant
	choice VehicleType {
		Bike,
		Car,
		Bus
	}
	// TODO initialize a variable of type choice
	// var my_vehicle : VehicleType = Car;

	// Forward declaration of a class
	class Rectangle;

	// Declaration and definition of a class
	class Rectangle{
		var width : f64;
		var height : f64;

		// Constructor that create an empty rectangle
		fn Empty() -> Self {
			return {.width = 0.0, .height = 0.0};
		}

		// Constructor
		fn Make(w : f64, h : f64) -> Self  {
			returned var v : Self = {.width = w, .height = h};
			return var;
		}

		// Method
		fn Perimeter[self: Self]() -> f64 {
			// TODO Support 2.0 * (self.w + self.h)
			var two : f64 = 2.0;
			return (self.width + self.height) * two;
		}
		fn Area[self : Self]() -> f64 {
			return self.width * self.height;
		}
		// Mutating method
		fn Reshape[ref self : Self](new_width : f64, new_height : f64) {
			self.width = new_width;
			self.height = new_height;
		}
	}
	var rec1 : Rectangle = {.width = 2.0, .height = 3.0};
	var rec2 : Rectangle = Rectangle.Empty();
	var rec3 : Rectangle = Rectangle.Make(3.0, 4.0);
	var perim1 : f64 = rec1.Perimeter();
	var area2 : f64 = rec2.Area();
	// TODO Print float or convert f64 and f32 to String

	// Base class
	base class Geom {
		var name : Core.String;

		// Constructor
		fn Make(s : Core.String) -> Self {
			return {.name = s};
		}
		// Virtual method, can be overrided in a derived class
		virtual fn GetName[self : Self]() -> Core.String {
			return self.name;
		}
	}

	class Point {
		extend base : Geom;
		var x : f64;
		var y : f64;

		// Constructor
		fn Make(x : f64, y : f64) -> Self {
			return {.base = Geom.Make("Point"), .x = x, .y = y};
		}
		// Destructor
		fn Destroy() {
			Core.PrintStr("Destroying point");
		}
		// Distance
		// TODO Define Sqrt in Core.Math package
		// fn Distance[self : Self]() -> f64 {
		//	return Sqrt(self.x * self.x + self.y * self.y);
		// }

		// TODO Fix Core.OrderedWith(Core.FloatLiteral)
		// fn InsideUnitCircle[self : Self]() -> bool {
		//	return (self.x * self.x + self.y * self.y) <= 1.0;
		// }

		fn GetX[self : Self]() -> f64 {return self.x;}
		fn GetY[self : Self]() -> f64 {return self.y;}
	}

	var point1 : Point = Point.Make(1.0, 2.0);
	// Convert a Point* to (const Point)*
	var p : Point* = &point1;
	// TODO Make this work
	// let p : const Point* = &point1;
	let px : f64 = p->GetX();
	let py : f64 = p->GetY();

	return 0;
}
