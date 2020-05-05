iinlets = 1;
outlets = 1;

var grainStart;
var grainLength;
var grainEnd;
var grainSpeed;
var variability;
var boidPX;
var boidPY;
var boidPZ;
var varRange = 10.0;


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
	//("recieved list:" + a + "\n")
	grainStart = a[0];
	grainLength = a[1];
	grainSpeed = a[2];
	variability = a[3];
	boidPX = a[8];
	boidPY = a[9];
	boidPZ = a[10];

	grainStart += ((boidPX / 5.0) * variability * varRange);
	grainLength = grainLength + ((boidPY / 5.0) * variability * varRange);
	grainSpeed = grainSpeed + ((boidPZ / 5.0) * variability * varRange);
	grainEnd = grainStart + grainLength;
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