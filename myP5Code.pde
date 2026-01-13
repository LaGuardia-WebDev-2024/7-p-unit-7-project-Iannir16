//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
 var ballX = 100;
 var ballY = 270;

 var ballXdir = 4;
 var ballYdir = 1.5;

//🟢Draw Procedure - Runs on Repeat
draw = function(){

  
  background(255,255,255,0);



  
ellipse(ballX, ballY, 70, 70);

ballX += ballXdir
ballY -= ballYdir


if(ballX< 100){
  ballXdir = +4;
  ballYdir = +1.5;
}

if(ballX> 450){
  ballXdir = -4;
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
