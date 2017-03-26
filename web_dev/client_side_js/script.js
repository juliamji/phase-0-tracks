console.log ("the script is running");



function addBorder(event){
	event.target.style.border = "2px solid blue"; 
}

var photo = document.getElementById("IMG_1420.jpg"); 
photo.addEventListener("click", addBorder); 