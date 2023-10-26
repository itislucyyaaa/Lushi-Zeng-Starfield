Particle[]ball;
void setup(){
  background(0);
  size(500,500);
  ball = new Particle[200];
  for(int i=0; i<ball.length; i++){
    ball[0]=new OddballParticle();
    ball[i] = new Particle();
  }
}

void draw(){
  background(0);
  for(int i=0;i<ball.length;i++){
    ball[i].show();
    ball[i].move();
 } 
}

class Particle{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle(){
    myX=250.0;
    myY=250.0;
    myAngle = (Math.random()*3*Math.PI);
    mySpeed = (Math.random()*10);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX=myX+(Math.cos(myAngle))*mySpeed;
    myY=myY+(Math.sin(myAngle))*mySpeed;
    if(myY<=-500||myY>=1000){
      myY=250;
      myX=250;
    }
  }
  void show(){
    fill(132,201,95);
    rect((float)myX,(float)myY,40,20);
    fill(220,242,181);
    ellipse((float)myX+20,(float)myY+10,17,17);
    fill(0);
    textSize(12);
    text("$",(float)myX+17,(float)myY+14);
  }
}

class OddballParticle extends Particle{  
  OddballParticle(){
    myX=250.0;
    myY=250.0;
    myAngle = (Math.random()*3*Math.PI);
    mySpeed = (Math.random()*1.5);
    myColor = color(255,(int)(Math.random()*250),(int)(Math.random()*250));
  }
  void move(){
    myX=myX+(Math.random()*31-15.5)*mySpeed;
    myY=myY+(Math.random()*31-15.5)*mySpeed;
    myColor=myColor-(int)(Math.random()*255);
    if(myX<=20||myX>=480||myY<=20||myY>=480){
      myX=250.0;
      myY=250.0;
    }
  }
  void show(){
   noStroke();
   fill(255,215,67);
   ellipse((float)myX,(float)myY,70,70);
   //fill(137,108,4);
   fill(myColor);
   ellipse((float)myX-12,(float)myY-7,15,15);
   ellipse((float)myX+12,(float)myY-7,15,15);
   ellipse((float)myX,(float)myY+17,25,25);
  }
}

