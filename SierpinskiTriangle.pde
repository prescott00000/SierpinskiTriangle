public void setup()
{
  size(600,600);

}
public void draw()
{
  

  background((int)Math.random()*255);
  //fill(0);
  sierpinski(128,450,350);

}
public void mousePressed(){
 sierpinski((int)Math.random()*255,(int)Math.random()*255,(int)Math.random()*255);
 fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if (len<=20)
triangle (x,y,x+len,y,x+(len/2),y-len);
else 
{
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
}
}