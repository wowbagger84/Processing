GameObject cells[][];		//Our game grid matrix 
float cellSize = 10;		//Size of our cells
int numberOfColumns;
int numberOfRows;
int fillPercentage = 10;	//Number of starting dots

void setup() {
	size(512, 512);		//Set game Size
	ellipseMode(LEFT);	//set correct mode for our dots (so they stay in frame)
	frameRate(4);		//Low framerate makes it easier to test.
	gameSetup();
}

void draw() {
	drawBackground();
	calculateNextGen();
	drawGame();
}

void drawBackground(){
	background(200);
}

void calculateNextGen()
{
	for (int y = 0; y < numberOfRows; ++y) {
		//for each column in each row
		for (int x = 0; x < numberOfColumns; ++x) {
			//Draw current cell
			int neighbours = calculateNeighbours(x, y);

			cells[x][y].nextGenAlive = checkAgainstRules(neighbours, cells[x][y].alive);			
		}
	}
}

int calculateNeighbours(int x, int y)
{
	int neighbours = 0;

	for (int deltaX = -1; deltaX <= 1; deltaX++)
	{
		for (int deltaY = -1; deltaY <= 1; deltaY++)
		{
			if (deltaX == 0 && deltaY == 0)
			{
				continue;
			}
			
			try
			{
				if (cells[x + deltaX][y + deltaY].alive)
				{
					neighbours++;
				}
			}
			catch (ArrayIndexOutOfBoundsException e)
			{

			}
		}
	}

	return neighbours;
}

boolean checkAgainstRules(int neighbours, boolean currentState)
{
	if (neighbours == 3) {
		return true;
	}
	if (neighbours < 2 || neighbours > 3) {
		return false;
	}

	return currentState;
}

void drawGame() {
	for (int y = 0; y < numberOfRows; ++y)
	{
		for (int x = 0; x < numberOfColumns; ++x)
		{
			cells[x][y].draw();	//Draw current cell
		}
	}
}
