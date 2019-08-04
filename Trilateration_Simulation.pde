//TODO menu, po kliknieciu dodaje nadajniki 
// dla 3D jak przymasz wsciniety przycisk to mozna obracac kamera 

PImage startscreen;
PFont font, font2;
int stage;

float mxD, myD;
float CalPosX, CalPosY;
float[] RandomPosX = new float[4];
float[] RandomPosY = new float[4];

float ButtonX = 120;
float ButtonY = 180;
float ButtonW = 150;
float ButtonH = 50;



void setup() {
  
  stage = 1;
  size(800, 600, P3D);
  //size(1900, 1000);
  font = createFont("DoHyeon-Regular.ttf", 32);
  font2 = createFont("DoHyeon-Regular.ttf", 15);
 
// Random positions for transmiters  
 for(int i=0;i<=3;i++){
    RandomPosX[i] = random(-(width/2),width/2);
  }
 for(int i=0;i<=3;i++){
    RandomPosY[i] = random(-(height/2),height/2);
  }
  
  
}

void draw() {
  Menu menu = new Menu();
  
  
  if(stage == 1){
    
    menu.drawMenu();
    menu.ifButton1();
    menu.ifButton2();
   }
  
  if(stage == 2){
    
    menu.drawStage2();
    menu.ifBackButton();
   
    translate(width/2,height/2);
    Receiver receiver = new Receiver(mxD,myD);
 
    Transmiter transmiter_1 = new Transmiter(RandomPosX[0],RandomPosY[0]);
    stroke(255,0,0);
    fill(255,0,0);
    transmiter_1.drawTransmiter();
    fill(200,200,200,15);
    transmiter_1.drawTransmiterOutline(transmiter_1.getDistance(receiver.xPosition,receiver.yPosition));

 
    Transmiter transmiter_2 = new Transmiter(RandomPosX[1],RandomPosY[1]);
    stroke(0,255,0);
    fill(0,255,0);
    transmiter_2.drawTransmiter();
    fill(200,200,200,15);
    transmiter_2.drawTransmiterOutline(transmiter_2.getDistance(receiver.xPosition,receiver.yPosition));
    
    
    Transmiter transmiter_3 = new Transmiter(RandomPosX[2],RandomPosY[2]);
    stroke(0,0,255);
    fill(0,0,255);
    transmiter_3.drawTransmiter(); 
    fill(200,200,200,15);
    transmiter_3.drawTransmiterOutline(transmiter_3.getDistance(receiver.xPosition,receiver.yPosition));
    stroke(0);
     
    Calculation cal = new Calculation();
    cal.x1 = transmiter_1.xPosition;
    cal.x2 = transmiter_2.xPosition;
    cal.x3 = transmiter_3.xPosition;
    
    cal.y1 = transmiter_1.yPosition;
    cal.y2 = transmiter_2.yPosition;
    cal.y3 = transmiter_3.yPosition;
  
    cal.r1 = transmiter_1.getDistance(receiver.xPosition,receiver.yPosition);
    cal.r2 = transmiter_2.getDistance(receiver.xPosition,receiver.yPosition);
    cal.r3 = transmiter_3.getDistance(receiver.xPosition,receiver.yPosition);
  
  
    fill(0,0,255);
    ellipse(cal.getCalPosX(),cal.getCalPosY(),15,15);
    receiver.draw_receiver();
  }
  
  if(stage == 3){
    print("sdawsd");
  }

  
  
 
}


void mouseDragged(){
    mxD = mouseX - width/2;
    myD = mouseY - height/2;
}
