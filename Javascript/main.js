var Observable = require('FuseJS/Observable');

var myVariable = Observable("some value");
var name = Observable("");
var age = Observable("");

var lowercase = myVariable.map(function(x){
	return x.toLowerCase();
});

var uppercase = myVariable.map(function(x){
	return x.toUpperCase();
});


var isThomas = myVariable.map(function(x){
	return x=="Thomas";
});

function button_clicked(){
	myVariable.value = "some other value";
	debug_log(myVariable);
}

function Person(name, age){
	this.name = name;
	this.age = age;
}

var myPerson = Observable(
	new Person("Thomas", 25),
	new Person("Cassandre", 25)
);

var listUppercase = myPerson
.map(function(x){
	return new Person(x.name.toUpperCase(), x.age);
})
.where(function(x){
	return x.age > 30;
});

function submit(){
	var newPerson = new Person(name.value, age.value);
	myPerson.add(newPerson);
	name.value="";
	age.value="";
}

function deleteRelou(){
	myPerson.removeWhere(
		function(x){
			return (x.name != "Thomas" && x.name != "Cassandre");	
		}
	);
}

var superNestedObject = {
	here : {
		is: {
			a:{
				very:{
					nested:{
						object:{
							message1 : "Yo Toto",
							message2 : "Coucou Cassou",
							message3 : "Salut"
						}
					}
				}
			}
		}
	}
};

var pictures = Observable();
var errorMessage = Observable("");

// fetch("http://jsonplaceholder.typicode.com/photos")
// 	.then(function(result){

// 		if(result.status !== 200){
// 			errorMessage.value = "Something went wrong: " + result.status;	
// 			return;
// 		}

// 		result.json().then(function(data){
// 			debug_log("Success");

// 			for (var i = 0; i <= 10; i++) {
// 				pictures.add(data[i]);
// 			};
// 		});
// 	}).catch(function(error){
// 		errorMessage.value = "Et merde ... " + error;
// 	});

var rotatingWheel = require('RotatingWheel');
var menuManager = require('MenuManager');

module.exports = {
	myVariable : myVariable,
	button_clicked: button_clicked,
	uppercase : uppercase,
	lowercase : lowercase,
	isThomas: isThomas,
	myPerson : myPerson,
	name : name,
	age: age,
	submit : submit,
	listUppercase : listUppercase,
	superNestedObject: superNestedObject,
	deleteRelou : deleteRelou,
	pictures : pictures,
	errorMessage : errorMessage,
	rotatingWheel : rotatingWheel,
	menuManager : menuManager
};