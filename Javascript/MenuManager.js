var Observable = require('FuseJS/Observable');

var menuOpen = Observable(false);

function menuHandler(){
	
	if(menuOpen.value) menuOpen.value = false;
	else menuOpen.value = true;
	debug_log("menuOpen: " + menuOpen.value);
}


module.exports = {
	menuOpen : menuOpen,
	menuHandler : menuHandler
};