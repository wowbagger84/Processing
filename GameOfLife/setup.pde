void gameSetup()
{
	//Calculate our grid depending on size and cellSize
	numberOfColumns = (int)Math.floor(width / cellSize);
	numberOfRows = (int)Math.floor(height / cellSize);

	//Initiate our matrix 
	cells = new GameObject[numberOfColumns][numberOfRows];

	//For each row
	for (int y = 0; y < numberOfRows; ++y)
	{
		//for each column in each row
		for (int x = 0; x < numberOfColumns; ++x)
		{
			//Create our game objects, multiply by cellSize for correct placement
			cells[x][y] = new GameObject(x, y, cellSize);

			cells[x][y].alive = randomAlive();
			cells[x][y].nextGenAlive = cells[x][y].alive;
		}
	}
}

boolean randomAlive()
{
	//Random if it should be alive
	if (random(0, 100) < fillPercentage)
	{
		return true;
	}
	else
	{
		return false;	
	}
}