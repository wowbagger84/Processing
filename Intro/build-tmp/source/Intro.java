import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Intro extends PApplet {

// int frame = 0;

// void setup()
// {
//    
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
float multiplier = 0.002f;
int numberOfPoints = 320;

public void setup()
{
	size(640, 480);
	strokeWeight(5);
}

public void draw()
{
	background(255);

	//Draw points
	point(100, 240 + sin(frame * 0.04f) * 100);

	frame++;
}
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Intro" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
