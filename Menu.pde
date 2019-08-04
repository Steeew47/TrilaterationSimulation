class Menu{
  
  Menu(){
     
  }
  
  void drawStage2(){
    background(33); 
    startscreen = loadImage("arrow.png");
    image(startscreen,0,0,40,30);
  }
  
  
  void drawMenu(){
    startscreen = loadImage("start.jpg");
    image(startscreen,0,0,800,600);
    cursor(ARROW);
    textAlign(CENTER);
    fill(255);
    textFont(font);
    text("Trilateration Simulation",200,150);
    textFont(font2);
    fill(0,0,0);
    text("by Adam Styczynski",450,580);
    fill(144,144,144);
    rect(ButtonX,ButtonY,ButtonW,ButtonH);
    fill(0,0,0);
    text("2D",195,210);
    fill(144,144,144);
    rect(ButtonX,ButtonY+100,ButtonW,ButtonH);
    fill(0,0,0);
    text("3D",195,210+100);
  }
  
  void ifButton1(){
    
    if(mouseX>ButtonX && mouseX <ButtonX+ButtonW && mouseY>ButtonY && mouseY <ButtonY+ButtonH){
      cursor(HAND);
      fill(100,100,100);
      rect(ButtonX,ButtonY,ButtonW,ButtonH);
      fill(0,0,0);
      text("2D",195,210);
    }
    if(mousePressed){
      if(mouseX>ButtonX && mouseX <ButtonX+ButtonW && mouseY>ButtonY && mouseY <ButtonY+ButtonH){
        fill(0);
        stage = 2;
      }
    }
  } 
    
  void ifButton2(){
    if(mouseX>ButtonX && mouseX <ButtonX+ButtonW && mouseY>ButtonY+100 && mouseY <ButtonY+100+ButtonH){
      cursor(HAND);
      fill(100,100,100);
      rect(ButtonX,ButtonY+100,ButtonW,ButtonH);
      fill(0,0,0);
      text("3D",195,210+100);
    }
    if(mousePressed){
      if(mouseX>ButtonX && mouseX <ButtonX+ButtonW && mouseY>ButtonY+100 && mouseY <ButtonY+100+ButtonH){
        fill(0);
        stage = 3;
      }
    }    
 }
  
   void ifBackButton(){
     if(mouseX>0 && mouseX <40 && mouseY>0 && mouseY <30){
      cursor(HAND);
    }
    if(mousePressed){
      if(mouseX>0 && mouseX <40 && mouseY>0 && mouseY <30){
        fill(0);
        stage = 1;
      }
    }
   }
   
    
  
}
