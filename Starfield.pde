Particle[] star;
void setup()
{
	size(600,600);
	background(0);
	star = new Particle[1000];
	for(int i = 1; i<star.length;i++){
		star[i] = new Particle();
	}
	star[0]= new OddballParticle();

}
void draw()
{
	background(0);
	for(int i = 0; i < star.length; i++){
		star[i].move();
		star[i].show();
	}
}
class Particle
{
	double x,y,speed,angle;
	int myColor;
	Particle(){
		x = 300;
		y = 300;
		speed = (Math.random()*6)+1;
		angle = (Math.random()*(2*Math.PI));
		myColor = 255;
	}
	void move(){
		x+=Math.cos(angle)*speed;
		y+=Math.sin(angle)*speed;
		if(x>600||x<0){
			x=300;
			y=300;
		}
		if(y>600||y<0){
			y=300;
			x=300;
		}
	}
	void show(){
		fill(255);
		ellipse((float)x,(float)y,10,10);
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){
		x = 300;
		y = 300;
		speed = (Math.random()*6)+1;
		angle = (Math.random()*(2*Math.PI));
		myColor = 150;
	}
	void move(){
		x+=Math.cos(angle)*speed;
		y+=Math.sin(angle)*speed;
		if(x>600||x<0){
			x=300;
			y=300;
		}
		if(y>600||y<0){
			y=300;
			x=300;
		}
	}
	void show(){
		fill(myColor);
		ellipse((float)x,(float)y,50,50);
	}
}


