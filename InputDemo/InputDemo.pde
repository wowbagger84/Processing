// ArrayList<Enemy> enemies;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
float x = 0;
float y = 0;

void setup() {
	size(1024, 1024);

	

	//Create our apples or pears
	// for (int i = 0; i < numberOfBalls; ++i) {
	// 	//random with 50% chance of having apples.
	// 	if (random(0, 1) < 0.5) {
	// 		balls[i] = new Apple();
	// 	}
	// 	else {
	// 		balls[i] = new Pear();
	// 	}
	// }
	enemies.add(new Enemy());
	enemies.add(new Enemy());
	enemies.add(new Enemy());
	enemies.add(new Enemy());
	// if (balls[0] instanceof Apple) {
	// 	println("apple");
	// }
	// else {
	// 	println("not apple");
	// }

	x = width / 2;
	y = height * 0.9;
}

void draw() {

	x += getXaxis() * 5;
	y += getYaxis() * 5;

	ellipse(x, y, 20, 20);

	for (Enemy e : enemies) {
		e.update();
		e.draw();
	}

	// //loop throuh all balls
	// for (int i = 0; i < numberOfBalls; ++i) {

	// 	//Check collision against all following balls
	// 	for (int j = i+1; j < numberOfBalls; ++j) {
			
	// 		//If size is zero, skip check and move on.
	// 		if (balls[i].size == 0 || balls[j].size == 0) {
	// 			continue;
	// 		}

	// 		//Run collision check code, current balls[i] agains all remaing balls.
	// 		boolean hasCollided = collision(balls[i].position.x, 
	// 										balls[i].position.y,
	// 										balls[i].size/2, 

	// 										balls[j].position.x, 
	// 										balls[j].position.y,
	// 										balls[j].size/2);

	// 		//If we have collided set size to zero.
	// 		if (hasCollided) {
	// 			balls[i].size = 0;
	// 			balls[j].size = 0;
	// 		}
	// 	}

	// 	//run the ball update function for movement
	// 	balls[i].update();
	// }

	// //Loop throuh all the balls again and draw them on the screen.
	// for (int i = 0; i < numberOfBalls; ++i) {
	// 	balls[i].draw();
	// }
}
