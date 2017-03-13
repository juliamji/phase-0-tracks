/*
Okay, so, I think I want to start off by splitting the string on spaces to turn into an array which can then use array.reverse 
After the letters are reversed, I want to join them back together on spaces 
*/

function reverseStr(str){
	var splitStr = str.split(""); 
	console.log(splitStr); 

	var newArr = splitStr.reverse(); 
	console.log(newArr); 

	var newStr = newArr.join(""); 
	console.log (newStr); 

	return newStr; 
}
//oooh I could make this even more efficient by chaining all these guys together

reverseStr("mine"); 

// this is crashing my program right now? says newStr is not defined
// if (1 == 1){
// 	var shouting = newStr.toUpperCase(); 
// 	console.log(shouting); 
// }