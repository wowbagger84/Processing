// int frame = 0;

// void setup()
// {
//   size(640, 480); 
// }

// void draw()
// {
// 	background(50, 166, 240);
// 	rect(100, 100, 300, 300);

// 	for (int i = 0; i < height; i = i + 10) {
// 		stroke(128, 128, 128, 64);
// 		strokeWeight(2);
// 		line(0, (i + frame) % height, width, (i + frame) % height);	
// 	}

// 	frame++;
// }

int frame = 0;
float multiplier = 0.002;
int numberOfPoints = 320;

void setup()
{
	size(640, 480);
	strokeWeight(5);
}

void draw()
{
	background(255);

	//Draw points
	point(100, 240 + sin(frame * 0.04) * 100);

	frame++;
}