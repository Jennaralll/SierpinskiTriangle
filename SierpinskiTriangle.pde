public void setup()
{
	fill(255, 255, 255);
	size(600, 600);
}
public void draw()
{
	sierpinski(1, 599, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{	
	fill((int)Math.random()*255 + 1, (int)Math.random()*255 + 1, (int)Math.random()*255 + 1);
	if(len <= 20){
		triangle(x, y, x + len/2, y -len, x + len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x + (len/2), y, len/2);
		sierpinski(x+(len/4), y - (len/2), len/2);
	}
}