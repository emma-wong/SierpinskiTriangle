public void setup()
{
	size(1000, 1000);
}

public void draw()
{
	background(0);
	sierpinski(0, 1000,mouseX);
}

public void mouseClicked()//optional
{

}

public void sierpinski(int x, int y, int len) 
{

	if (len <= 20) {
		stroke(255);
		fill(random(0, 255), random(0, 255), random(0, 255));
     	triangle(x, y, x+len/2, y-len, x+len, y);
    } 
    else {
    	sierpinski(x,y,len/2);
    	sierpinski(x+len/2, y, len/2);
    	sierpinski(x+len/4,y-len/2, len/2);
    } 	 
}