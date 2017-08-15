
//THIS SHIT DOESN"T WORK!
//Vertex does not store beziers correctly.

int offset = 12;        //distance between strips
int digitWidth = 100;   //width of a digit (because the strips are vertical, this is on the Y axis)
int curve = 20;         //bezier specific parameter for curved digits
int radical = 0;        //bezier specific parameter for curved digits, possibly not useful
int digitHeight = 120;  //height of a digit (because of strip orientation this is the X axis)
int stripWidth = 100;   //width of the non-digit part of the strip (X axis)
int digitNumber = 4;    //number of digits

PShape strip;

void setup() {
  size(600, 600);

}

void draw() {
   
createStrip();  //shape(strip, 100, 100);
}

//control points are halfway between the two points of the line, their x axis is controlled by curve, their y axis by radical

void createStrip() {

  beginShape();
  vertex(digitHeight+stripWidth/2, 0);
  vertex(digitHeight, 0);
  int i = 0;
 // for (int i = 0; i < digitNumber+1; i++) {
    bezierVertex(digitHeight/2-radical, curve+digitWidth*i, digitHeight/2+radical, digitWidth/2-curve+digitWidth*i, 0, digitWidth/2+digitWidth*i);
    bezierVertex(digitHeight/2+radical, digitWidth/2+curve+digitWidth*i, digitHeight/2-radical, digitWidth-curve+digitWidth*i, digitHeight, digitWidth+digitWidth*i);
 // }
  vertex(digitHeight+stripWidth, digitWidth+digitWidth*digitNumber);
  /*
 // for (int i = 0; i < digitNumber+1; i++) {
   int i = 0;
    strip.bezierVertex(digitHeight+stripWidth+digitHeight/2+radical, digitWidth+(digitWidth*digitNumber-i)-curve, 
                       digitHeight+stripWidth+digitHeight/2-radical, digitWidth+(digitWidth*digitNumber-i)+curve, 
                       digitHeight+stripWidth+digitHeight, digitWidth+(digitWidth*digitNumber-(i+1)));
    
  //  strip.bezierVertex(digitHeight/2-radical, curve+digitWidth*i, digitHeight/2+radical, digitWidth/2-curve+digitWidth*i, 0, digitWidth/2+digitWidth*i);
  //  strip.bezierVertex(digitHeight/2+radical, digitWidth/2+curve+digitWidth*i, digitHeight/2-radical, digitWidth-curve+digitWidth*i, digitHeight, digitWidth+digitWidth*i);
//  }
*/

  endShape();
}