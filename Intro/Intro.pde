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
 
    //Draw animated point
    point(100, 240 + sin(frame) * 100);
 
    frame++;
}