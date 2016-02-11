


private int z = 320;

public void setup()
{
	size(800, 800);
	background(0,0,0);
	frameRate(60);


}
public void draw()
{
	fractal(400,400,z);
	if(z<850){

	z = (int)(z*1.05);

} else{
	// background(0,0,0);
	pushMatrix();
	rotate(PI/150);

	 z=440;
	popMatrix();
}

}
public void keyPressed()//optional
{


}
public void fractal(int x, int y, int len) 
{

fill(255,255,255);	
quad((float)(x+len),(float)(y+len),(float)(x+len),(float)(y-len),(float)(x-len),(float)(y-len),
		(float)(x-len),(float)(y+len));
fill(0,0,0);
quad((float)(x),(float)(y+len),(float)(x-len),(float)(y),(float)(x),(float)(y-len),
		(float)(x+len),(float)(y)); 




	if(len>=5){
		
		pushMatrix();
		 // rotate(PI/150);
		
		fractal(x,y,len/2);

		
  		popMatrix();






  	

		

	// 	// fractal((int)(x+10*len*cos(len/2)),y,len*2/3);
	// 	// fractal((int)(x-10*len*cos(len/2)),y,len*2/3);
	// 	// fractal(x,(int)(y+10*len*sin(len/2)),len*2/3);
	// 	// fractal(x,(int)(y-10*len*sin(len/2)),len*2/3);
		 
	// 	 // fractal(x-len,y+len,len/2);
	// 	 // fractal(x+len,y+len,len/2);
	// 	 // fractal(x-len,y-len,len/2);



		
	} 
		
		// line(x, y, x-len, y-len);
		// line(x, y, x-len, y+len);
		// line(x, y, x+len, y+len);



	

	

	



}

// class Square{
// 	int a,b,c;
// 	Square(int g, int h, int j){
// 		a = g;
// 		b= h ;
// 		c =j;


// 	}
// 	show(){


// fill(255,0,0);	
// quad((float)(x+len),(float)(y+len),(float)(x+len),(float)(y-len),(float)(x-len),(float)(y-len),
// 		(float)(x-len),(float)(y+len));
// fill(0,0,0);
// quad((float)(x),(float)(y+len),(float)(x-len),(float)(y),(float)(x),(float)(y-len),
// 		(float)(x+len),(float)(y)); 


// 	}






// }
