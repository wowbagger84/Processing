int so = 3;

void setup()
{
 size (768, 432);
}

void draw()
{
   background(); 
   name(-14, 129);
}

void name(int x, int y)
{
 shadow();
 so = 3;
 
 w(x + 0, y + 0);
 o(x, y);
 w(x + 131, y + 0);
 b(x, y);
 a(x - 3,y);
 g(x, y);
 g(x+59, y);
 e(x + 2, y);
 r(x + 4, y);

  green();
  so = 0;
  
 w(x + 0, y + 0);
 o(x, y);
 w(x + 131, y + 0);
 b(x, y);
 a(x - 3,y);
 g(x, y);
 g(x+59, y);
 e(x + 2, y);
 r(x + 4, y);
}

void shadow()
{
  stroke(0, 0, 0, 129);
  fill(0,0,0,129);
}

void green()
{
  stroke(52,219,59);
  fill(52,219,59);
}

void w(int x, int y)
{
   strokeWeight(14.8);
   line(x + 127+so, y + 100+so, x + 148+so, y + 139+so);
   line(x + 154+so, y + 101+so, x + 171+so, y + 131+so);
   line(x + 180+so, y + 100+so, x + 180+so, y + 100+so);
}

void o(int x, int y)
{
   strokeWeight(51.2);
   point(x + 222+so, y + 121+so);
}

void b(int x, int y)
{
   strokeWeight(14.8);
   line(x + 342+so, y + 64+so, x + 342+so, y + 142+so);
   strokeWeight(51.2);
   point(x + 362+so, y + 121+so);
}

void a(int x, int y)
{
   strokeWeight(14.8);
   line(x + 442+so, y + 121+so, x + 442+so, y + 142+so);
   strokeWeight(51.2);
   point(x + 424+so, y + 121+so);
}

void g(int x, int y)
{
   strokeWeight(14.8);
   line(x + 499+so, y + 121+so, x + 496+so, y + 156+so);
   strokeWeight(51.2);
   point(x + 481+so, y + 121+so);
   strokeWeight(28.9);
   point(x + 486 + so, y + 167+so);
}

void e(int x, int y)
{
   strokeWeight(1);
   arc(x + 599+so, y + 123+so, 55, 55, 0.6, 5.7, PIE); 
}

void r(int x, int y)
{
   strokeWeight(14.8);
   line(x + 637+so, y + 106+so, x + 637+so, y + 142+so);
   strokeWeight(22.4);
   point(x + 651+so, y + 109+so);
}


void background()
{
  background(255); 

  //Blue
  stroke(36,158,251);
  strokeWeight(25.0);
  line(50, 0, 50, 300);
  line(50, 300, 117, height);
  line(50, 300, 143, height);
  
  //Red
  stroke(241,38,38);
  line(75, 0, 75, 300);
  line(75, 300, 169, height);
  line(75, 300, 198, height);
  
  stroke(0);
  strokeWeight(7);
  line(0, 300, width, 300);
}