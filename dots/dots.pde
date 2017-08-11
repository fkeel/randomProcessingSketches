

FingerCloud touchPoint = new FingerCloud(50);
FingerCloud aura = new FingerCloud(100);
FingerCloud center = new FingerCloud(20);
FingerCloud halo = new FingerCloud(200);

void setup(){
  size(500,500);
  touchPoint.populate(200, "NaN");
    aura.populate(400, "NaN");
    center.populate(100, "NaN");
    halo.populate(300, "NaN");
    strokeWeight(2);

  
  
}

void draw(){
  background(0);
  stroke(255);
  
  touchPoint.place(mouseX+20,mouseY+20);
  aura.place(mouseX+20,mouseY+20);
  center.place(mouseX+20,mouseY+20);
  halo.place(mouseX+20, mouseY+20);
  
  
}