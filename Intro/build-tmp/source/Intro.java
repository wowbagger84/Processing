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

int frame = 0;
float multiplier = 0.002f;
int numberOfPoints = 320;
 
public void setup()
{
    
    strokeWeight(5);
}
 
public void draw()
{
    background(255);
 
    //Draw animated point
    point(100, 240 + sin(frame) * 100);
 
    frame++;
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Intro" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
