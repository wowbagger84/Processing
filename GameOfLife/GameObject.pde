public class GameObject {
	
	float x, y; 	//Keep track of our positon
	float size;		//our size

	//Keep track if we are alive
	boolean alive = false;
	boolean nextGenAlive = false;

	//Constructor
	public GameObject (float x, float y, float size) {
		//Our X is equal to incoming X, and so forth
		this.x = x * size;
		this.y = y * size;
		this.size = size;
	}

	void draw()
	{
		//If we are alive, draw our dot.
		if (alive) {
			ellipse(x, y, size, size);		
		}
		alive = nextGenAlive;
	}
}