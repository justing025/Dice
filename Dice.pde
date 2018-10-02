int sumDie=0;
void setup()
{
	size(800,800);
	background(0);
	noLoop();
}
void draw()
{	
	background(0);
	sumDie=0;
	for(int y =0; y<700; y+=55)
	{
		for(int x=0; x<=700; x+=55){
		
			
	Die one = new Die(x,y);
	one.roll();
	one.show();
	sumDie=sumDie+one.toRoll;
	}
		}
		fill(random(255),random(255),random(255));
		println(sumDie);
		textSize(20);
		text("The sum of the dice ="+sumDie,450,765);
}

void mousePressed()
{
	background(0);
	redraw();
}
class Die //models one single dice cube
{
	int mySize, toRoll, myX, myY;
	Die(int x, int y)
	{
		mySize = 50;
		myX = x;
		myY = y;	//variable initializations here
	}

	void roll()
	{
		
		toRoll = ((int)(Math.random()*6)+1);

		
		
}
		//your code here
	
	void show()
	{
		fill(255);
		rect(myX, myY, mySize, mySize,5);
		if (toRoll==1)
		{
		fill(255,255,255);
		ellipse(myX+25, myY+25,5,5);
		}
		else if (toRoll==2)
		{

			fill(255,255,255);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
		else if (toRoll==3)
		{
			fill(255,255,255);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
		else if(toRoll==4)
		{
			fill(255,255,255);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+15,myY+35,5,5);
			ellipse(myX+35,myY+15,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
		else if(toRoll==5)
		{
			fill(255,255,255);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+15,myY+35,5,5);
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+35,myY+15,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
		else if(toRoll==6)
		{
			fill(255,255,255);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+15,myY+25,5,5);
			ellipse(myX+15,myY+35,5,5);
			ellipse(myX+35,myY+15,5,5);
			ellipse(myX+35,myY+25,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
	}

		//your code here
	

}