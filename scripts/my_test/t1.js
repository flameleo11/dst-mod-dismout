var print = console.log;
var x = 111;
var y = x
var f1 = function () {
	return 111;
};
var f2 = f1;
setTimeout(function(){
	print(x, y);
	print(f1(), f2());
}, 1000)
x = 222;
f1 = function () {
	return 222;
};
