int offset = 12;
int digitWidth = 100;
int curve = 0;
int radical = 0;
int digitHeight = 120;
void setup() {
  size(600, 600);


  noFill();
  stroke(255, 102, 0);
  line(85, 20, 10, 10);
  line(90, 90, 15, 80);
  stroke(0, 0, 0);
  bezier(85, 20, 10, 10, 90, 90, 15, 80);
  line(85, 20, 15, 80);


  translate(150, 150);

  line(digitHeight, 0, 0, digitWidth/2);
  line(0, digitWidth/2, digitHeight, digitWidth);

  line(digitHeight+offset, 0, 0+offset, digitWidth/2);
  line(0+offset, digitWidth/2, digitHeight+offset, digitWidth);

  translate(150, 150);
  strokeWeight(3);
  stroke(0, 0, 255);

  line(digitHeight/2, curve, digitHeight/2, digitWidth/2-curve);
  strokeWeight(1);
  stroke(0);
  bezier(digitHeight, 0, digitHeight/2, curve, digitHeight/2, digitWidth/2-curve, 0, digitWidth/2);

  stroke(255, 0, 0);
  strokeWeight(1);
  line(digitHeight/2, digitWidth/2+curve, digitHeight/2, digitWidth-curve);
  stroke(0);
  strokeWeight(1);
  bezier(0, digitWidth/2, digitHeight/2, digitWidth/2+curve, digitHeight/2, digitWidth-curve, digitHeight, digitWidth);


  translate(0, digitWidth);
  line(digitHeight/2-radical, curve, digitHeight/2+radical, digitWidth/2-curve);
  strokeWeight(1);
  stroke(0);
  bezier(digitHeight, 0, digitHeight/2-radical, curve, digitHeight/2+radical, digitWidth/2-curve, 0, digitWidth/2);

  stroke(255, 0, 0);
  strokeWeight(1);
  line(digitHeight/2, digitWidth/2+curve, digitHeight/2, digitWidth-curve);
  stroke(0);
  strokeWeight(1);
  bezier(0, digitWidth/2, digitHeight/2, digitWidth/2+curve, digitHeight/2, digitWidth-curve, digitHeight, digitWidth);

  translate(100, -200);
  rect(0, 0, 20, 20);

  beginShape();
  vertex(digitHeight, 0);
  fill(100,200,20);
  bezierVertex(digitHeight/2-radical, curve, digitHeight/2+radical, digitWidth/2-curve, 0, digitWidth/2);
  bezierVertex(digitHeight/2+radical, digitWidth/2+curve, digitHeight/2-radical, digitWidth-curve, digitHeight, digitWidth);
  endShape();
  
  translate(0, -digitWidth-5);
  
   beginShape();
  vertex(digitHeight, digitWidth);
  fill(100,200,20);
  bezierVertex(digitHeight/2-radical, curve+digitWidth, digitHeight/2+radical, digitWidth/2*3-curve, 0, digitWidth/2*3);
  bezierVertex(digitHeight/2+radical, digitWidth/2+curve, digitHeight/2-radical, digitWidth-curve, digitHeight, digitWidth);
  endShape();
}

void draw() {
}