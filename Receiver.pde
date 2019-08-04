public class Receiver{

  float xPosition;
  float yPosition;
  
  Receiver(float x, float y){
    this.xPosition = x;
    this.yPosition = y;
  }
  
  
  void draw_receiver(){
    //noLoop();
    
    fill(0,255,0);
    ellipse(xPosition,yPosition,10,10);
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
