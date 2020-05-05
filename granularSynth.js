iinlets = 1;
outlets = 1;

var grainStart;
var grainEnd;
var GrainSpeed;


var myval=0;
var clipLength = 2607;


if (jsarguments.length>1)
	myval = jsarguments[1];
	
	
function bang()
{
	outlet(0,grainStart, grainEnd, grainSpeed);
}

function msg_int(v)
{
	post("received int " + v + "\n");
	myval = v;
	bang();
}

function msg_float(v)
{
	post("received float " + v + "\n");
	myval = v;
	bang();
}

function list()
{
	var a = arrayfromargs(arguments);
	grainStart = a[0];
	grainEnd = grainStart + a[1];
	grainSpeed = a[2];
	bang();
}

function anything()
{
	if (messagename == "grainLength") {
		grainLength = arguments[0];
		post("Grain Length set: " + grainLength);
	}
	var a = arrayfromargs(messagename, arguments);
	post("received message " + a + "\n");
	myval = a;
	bang();
}