//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
 //volleyball
 var ballX = 100;
 var ballY = 270;

 var ballXdir = 6;
 var ballYdir = 1.5;

//spiker
var spikerX = 500;
var spikerY = 270;

var spikerYdir = 1.5;

//receiver
var receiverX = 50
var receiverY = 280



//🟢Draw Procedure - Runs on Repeat
draw = function(){

  
  background(255,255,255,0);

  line(300,310, 300,384)
  

//Receiver movement
fill(215, 143, 49)
line(receiverX, receiverY-5, receiverX+55, receiverY+9 );//arms
ellipse(receiverX+55, receiverY+9, 15, 20);//hand
ellipse(receiverX, receiverY-40, 50, 50);//head
fill(205, 64, 22)
ellipse(receiverX, receiverY+30, 50, 90);//body
fill(255,255,255)
ellipse(receiverX+10, receiverY-44, 7, 7);//eye


//spiker movement
fill(215, 143, 49)
line(spikerX, spikerY+30, spikerX-46, spikerY-59);//arms
ellipse(spikerX-42, spikerY-59, 15, 20);//hand
ellipse(spikerX, spikerY-40, 50, 50);//head
fill(22, 95, 205)
ellipse(spikerX, spikerY+30, 50, 90);//body
fill(255,255,255)
ellipse(spikerX-10, spikerY-44, 7, 7);

spikerY += spikerYdir;


if(spikerY< 225){
  spikerYdir = 1.5;
}


if(spikerY> 300){
  spikerYdir = -1.5;
}


//volleyball movement 
fill(255, 255, 255)
ellipse(ballX, ballY, 70, 70);

ballX += ballXdir
ballY -= ballYdir


if(ballX< 100){
  ballXdir = +6;
  ballYdir = +1.5;
}

if(ballX> 450){
  ballXdir = -6;
  ballYdir = -1.5;
}








  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
