Particle[] star;
void setup()
{
	size(600,600);
	background(192);
	star = new Particle[1000];
	for(int i = 0; i<star.length;i++){
		star[i] = new Particle();
	}
}
void draw()
{
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

}

class OddballParticle extends Particle
{
	//your code here
}


