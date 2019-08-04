class Calculation{
    float x1;
    float x2;
    float x3;
    float y1;
    float y2;
    float y3;
    float r1;
    float r2;
    float r3;
    

  Calculation(){
    this.x1 = 0;
    this.x2 = 0;
    this.x3 = 0;
    this.y1 = 0;
    this.y2 = 0;
    this.y3 = 0;
    this.r1 = 0;
    this.r2 = 0;
    this.r3 = 0;
    

  }
  
  float A(){
    float A = -2*x1+2*x2;
    return A;
  }
  float B(){
    float B = -2*y1+2*y2;
    return B;
  }
  float C(){
    float C = pow(r1,2)-pow(r2,2)-pow(x1,2)+pow(x2,2)-pow(y1,2)+pow(y2,2);;
    return C;
  }
  float D(){
    float D = -2*x2+2*x3;
    return D;
  }
  float E(){
    float E = -2*y2+2*y3;
    return E;
  }
  float F(){
    float F = pow(r2,2)-pow(r3,2)-pow(x2,2)+pow(x3,2)-pow(y2,2)+pow(y3,2);
    return F;
  }
  
  
  float getCalPosX(){
    float CalPosX = (C()*E()-F()*B())/(E()*A()-B()*D());
    return CalPosX;
  }
  
  float getCalPosY(){
    float CalPosY = (C()*D()-A()*F())/(B()*D()-A()*E());
    return CalPosY;
  }
  
  
}
