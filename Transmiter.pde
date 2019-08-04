public class Transmiter{
  
  float xPosition;
  float yPosition;
  
  float xRandom = random(-width/2,width/2);
  float yRandom = random(-height/2,height/2);
  
  float getDistance(float x, float y){
    float distance;
    float xDelta = x-this.xPosition;
    float yDelta = y-this.yPosition;
    distance = sqrt(pow(xDelta,2)+pow(yDelta,2));
    return distance;
  }
  

  Transmiter(float x, float y){
    this.xPosition = x;
    this.yPosition = y;
    
  }
  
  void drawTransmiter(){
    //noLoop();
    fill(255,0,0);
    ellipse(this.xPosition,this.yPosition,10,10);
  }
  
  void drawTransmiterOutline(float distance){
    //noLoop();
    //noFill();
    
    ellipse(this.xPosition,this.yPosition,2*distance,2*distance);
   
  }
  

  
}
