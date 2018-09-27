//Number of lines that make up a curve
int numberOfLines = 32;

void setup() {
	size(640, 480);
}

void draw() {
  //Clear background
	background(255);

  //Create our base lines that we will use to draw our lines.
	lineCord xAxis = new lineCord(100, 10, 5, 420);
	lineCord yAxis = new lineCord(5, 420, 600, 300);

  //Call our function that draws a curve.
	drawCurve(xAxis, yAxis);

  //Example with random lines. Turn on to get a new curve each frame.
	//xAxis = new lineCord(random(0, width), random(0, height), random(0, width), random(0, height));
	//yAxis = new lineCord(random(0, width), random(0, height), random(0, width), random(0, height));
	//drawCurve(xAxis, yAxis);
}

void drawCurve(lineCord xAxis, lineCord yAxis)
{
  
	strokeWeight(1);
	for (int i = 0; i <= numberOfLines; ++i) {
		
    //every third line black
		if (i % 3 == 0) {
			stroke(0);
		}
		else {
			stroke(128);
		}		

    //Calculate each of our lines in the curve based on the two input lines.
		float lineX1 = xAxis.x1 + (i * (xAxis.x2 - xAxis.x1) / numberOfLines);
		float lineY1 = xAxis.y1 + (i * (xAxis.y2 - xAxis.y1) / numberOfLines);

		float lineX2 = yAxis.x1 + (i * (yAxis.x2 - yAxis.x1) / numberOfLines);
		float lineY2 = yAxis.y1 + (i * (yAxis.y2 - yAxis.y1) / numberOfLines);

		//point(lineX1, lineY1);
		line(lineX1, lineY1, lineX2, lineY2);
	}

	stroke(0);
	strokeWeight(3);
  
  //draw our axis last in black and bold.
	line(xAxis.x1, xAxis.y1, xAxis.x2, xAxis.y2);
	line(yAxis.x1, yAxis.y1, yAxis.x2, yAxis.y2);
}

//A class to represent line data to make the code easier to work with
public class lineCord {
	float x1;
	float y1;
	float x2;
	float y2;

	lineCord(float x1, float y1, float x2, float y2)
	{
    //line start pos
		this.x1 = x1;
		this.y1 = y1;
    //line end pos
		this.x2 = x2;
		this.y2 = y2;
	}
}