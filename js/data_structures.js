var colors = ["periwinkle", "lapis lazuli", "mercurochrome", "olive"];
var names = ["Ed", "Mr. Horse", "Sir Chillz-a-lot", "Seabiscuit"];
colors.push("poo-emoji-brown");
names.push("Cersei");

var horses = {};
for (var i = 0, i< horses.length; i++){
	horses[names[i]] = colors [i];
};
console.log(horses);


function Car(make, model, year) {

	this.make = make;
	this.model = model;
	this.year = year;

this.horn = function() { console.log("La Cucaracha"); };
	
}

var newCar = new Car("Toyota", "Prius", 2016);
console.log(newCar);
newCar.horn();

var secondCar = new Car("Mercedes", "Minivan", 2017);
console.log(secondCar);
secondCar.horn();