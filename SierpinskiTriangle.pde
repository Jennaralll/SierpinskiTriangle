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
	fill(0);
	if(len <= 20){
		triangle(x, y, x + len/2, y -len, x + len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x, y + len/2, len/2);
		sierpinski(x, y+len/4, len + len/2);
	}
}