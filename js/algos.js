//write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
//set up function taking in words array
//i should probably set up some variables to indicate longest and length?
//now, i wanna loop through my array and find the length of each word using .length  
//if the word is the longest, i want to print that word out


function longestWord(words){
	var long = 0; 
	var longest; 

	for (var i = 0; i < words.length; i++){
		if (words[i].length > long){ //if the array's length is greater than long
			var long = words[i].length; //set long to equal the array's length
			longest = words[i]; //set longest to my array 
		}
	}
	return longest; 
}


//write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.)
//set up function taking in two objects 
//i want to iterate/loop over these and check to see if one key/value matches another value in the other object
//for in loop
//if none match, i want to return false
//if one matches, i want to return true 

function keyMatch(obj1, obj2){
	for (var key in obj1){
		if (obj1[key] === obj2[key]){
			return true; 
		}
	}
	return false; 
}

//function that takes an integer for length, and builds and returns an array of strings of the given length
//if 3 entered, return array with 3 words 
//set up function that takes a number
//set up an array of random words? 
//since what i want to return is an array, i should probably start off with an empty array to push into? 
//i need math.random and math.floor to generate a random number 

//this function is currently incomplete. 
function randomGenerator(num){
	var dictionary = ["yes", "no", "mmm", "ugh", "happy", "drunken", "eviscerate", "a", "mate", "poopface"]; 
	var randomWords = []; 

	// this.length = num 

	for(var i = 1; i <= num; i++){
		var random = dictionary[Math.floor(Math.random() * dictionary.length)]; 
	}
return randomWords.push(random); 
}


longestWord(["big", "bigger", "biggest"]); 
keyMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}); 
randomGenerator(3)