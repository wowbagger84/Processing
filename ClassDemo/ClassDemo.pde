//array with all our balls/apples/pears
Ball[] balls;
int numberOfBalls = 100;

float x = 0;
float y = 0;

boolean[] keys = new boolean[5];

void setup() {
	size(512, 512);
	balls = new Ball[numberOfBalls];

	//Create our apples or pears
	for (int i = 0; i < numberOfBalls; ++i) {
		//random with 50% chance of having apples.
		if (random(0, 1) < 0.5) {
			balls[i] = new Apple();
		}
		else {
			balls[i] = new Pear();
		}
	}

	if (balls[0] instanceof Apple) {
		println("apple");
	}
	else {
		println("not apple");
	}
}


void keyPressed()
{
	// if (key == CODED)
	// {
	// 	if (keyCode == LEFT)
	// 		x += 5;
	// 	else if (keyCode == RIGHT)
	// 		x -= 5;
	//  }
	 if (key=='w')
	 	keys[0] = true;
	 else if (key=='s') 
	 	keys[1] = true;
	 else if (key=='d')
	 	keys[2] = true; 
	 else if (key=='a') 
	 	keys[3] = true;
}

void keyReleased()
{
	// if (key == CODED)
	// {
	// 	if (keyCode == LEFT)
	// 		x += 5;
	// 	else if (keyCode == RIGHT)
	// 		x -= 5;
	//  }
	 if (key=='w')
	 	keys[0] = false;
	 else if (key=='s') 
	 	keys[1] = false;
	 else if (key=='d')
	 	keys[2] = false; 
	 else if (key=='a')  
	 	keys[3] = false;
}

void draw() {

	if (keys[0]) {
	 	y -= 5;
	}
	if (keys[1]) {
	 	y += 5;
	}
	if (keys[2]) {
	 	x += 5;
	}
	if (keys[3]) {
	 	x -= 5;
	}

	ellipse(x, y, 10, 10);

	//loop throuh all balls
	for (int i = 0; i < numberOfBalls; ++i) {

		//Check collision against all following balls
		for (int j = i+1; j < numberOfBalls; ++j) {
			
			//If size is zero, skip check and move on.
			if (balls[i].size == 0 || balls[j].size == 0) {
				continue;
			}

			//Run collision check code, current balls[i] agains all remaing balls.
			boolean hasCollided = collision(balls[i].position.x, 
											balls[i].position.y,
											balls[i].size/2, 

											balls[j].position.x, 
											balls[j].position.y,
											balls[j].size/2);

			//If we have collided set size to zero.
			if (hasCollided) {
				balls[i].size = 0;
				balls[j].size = 0;
			}
		}

		//run the ball update function for movement
		balls[i].update();
	}

	//Loop throuh all the balls again and draw them on the screen.
	for (int i = 0; i < numberOfBalls; ++i) {
		balls[i].draw();
	}
}
