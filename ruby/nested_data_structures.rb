#mall? 
#department stores - bloomingdales, nordstrom
#fast food - chipotle, panda express
#clothing stores - h&m, zara, j.crew
#shoe stores - adidas, aldo

mall = {
	department_stores: ['bloomingdales', 'nordstrom'], 
	fast_food: ['chipotle', 'panda express'], 
	clothing_stores: ['h&m', 'zara', 'j.crew'], 
	shoe_stores: ['adidas', 'aldo']
}

mall[shoe_stores].push('foot locker')
mall[clothing_stores].delete(2)
mall[fast_food][1]