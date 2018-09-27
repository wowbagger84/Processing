Ball ball;

void setup()
{
   size(200, 200); 
   ball = new Ball(100, 100);
}

void draw()
{
   ball.update();
   ball.draw();
}