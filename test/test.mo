import Leftpad "../src/leftpad";

assert (Leftpad.leftPad("Hi", 2) == "Hi");
assert (Leftpad.leftPad("Hi", 5) == "   Hi");
assert (Leftpad.leftPad("Well", 5) == " Well");

assert (Leftpad.leftPadWith("Hi", 2, '.') == "Hi");
assert (Leftpad.leftPadWith("Hi", 5, '.') == "...Hi");
assert (Leftpad.leftPadWith("Well", 5, '.') == ".Well");