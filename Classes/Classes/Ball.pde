class Ball{
    PVector position;
    PVector velocity;

    Ball(float x, float y){
        position = new PVector(x, y);

        velocity = new PVector();
        velocity.x = random(10) - 5;
        velocity.y = random(10) - 5;
    }

    void update(){
        position.x += velocity.x;
        position.y += velocity.y;
        if(position.x > width || position.x < 0)
          velocity.x *= -1;
          
        if(position.y > height || position.y < 0)
          velocity.y *= -1;
    }
    
    void draw()
    {
      ellipse(position.x, position.y, 50, 50);
    }
}