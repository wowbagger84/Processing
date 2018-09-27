boolean[] keys = new boolean[5];
//0 up
//1 down
//2 right
//3 left
//4 fire

float getXaxis()
{
	if (keys[2]) {
	 	return 1;
	}
	if (keys[3]) {
	 	return -1;
	}

	return 0;
}

float getYaxis()
{
	if (keys[0]) {
	 	return -1;
	}
	if (keys[1]) {
	 	return 1;
	}
	return 0;
}

void keyPressed()
{
	if (key == CODED)
	{
		if (keyCode == UP)
			keys[0] = true;
		else if (keyCode == DOWN)
			keys[1] = true;
		if (keyCode == LEFT)
			keys[3] = true;
		else if (keyCode == RIGHT)
			keys[2] = true;
	 }
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
	if (key == CODED)
	{
		if (keyCode == UP)
			keys[0] = false;
		else if (keyCode == DOWN)
			keys[1] = false;
		if (keyCode == LEFT)
			keys[3] = false;
		else if (keyCode == RIGHT)
			keys[2] = false;
	 }
	 if (key=='w')
	 	keys[0] = false;
	 else if (key=='s') 
	 	keys[1] = false;
	 else if (key=='d')
	 	keys[2] = false; 
	 else if (key=='a')  
	 	keys[3] = false;
}