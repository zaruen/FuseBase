var Observable = require('FuseJS/Observable');

var yo = Observable("yo");
var rotationDegree = Observable(0);

function turnLeft(){
	debug_log("Left");
	rotationDegree.value -= 60;
}

function turnRight(){
	debug_log("Right");
	rotationDegree.value += 60;	
}

module.exports = {
	turnLeft : turnLeft,
	turnRight : turnRight,
	rotationDegree : rotationDegree,
	yo : yo
};