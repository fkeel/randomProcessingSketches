





class Strip {
  int index;
  int digitWidth;
  int curve;
  int radical;
  int digitHeight;
  int digitNumber;
  int stripSolid; //strip without spikes

  Strip (int index_in, int digitNumber_in) {
    index = index_in;
    digitNumber = digitNumber_in;
  }

  void update(int digitWidth_in, int curve_in, int radical_in, int digitHeight_in, int width_in) {
    digitWidth = digitWidth_in;
    digitHeight = digitHeight_in;
    curve = curve_in;
    radical = radical_in;
    stripSolid = width_in;
  }

  void drawStrip(int x, int y) {
    int solidBottomLeft = digitHeight+stripSolid;
    int stripHeight = digitWidth+(digitWidth*digitNumber);
    pushMatrix();
    translate(x, y);
    beginShape();
    vertex(digitHeight, 0);
    fill(100, 200, 20);
    //digits
    for (int i = 0; i<digitNumber+1; i++) {
      bezierVertex(digitHeight/2-radical, (digitWidth/4)-curve+(digitWidth*i), digitHeight/2+radical-20, digitWidth/4+curve+(digitWidth*i), 0, digitWidth/2+(digitWidth*i));
      bezierVertex(digitHeight/2+radical-20, (digitWidth/4)*3-curve+(digitWidth*i), digitHeight/2-radical, (digitWidth/4)*3+curve+(digitWidth*i), digitHeight, digitWidth+(digitWidth*i));
    }
    //solid
    vertex(solidBottomLeft, stripHeight);
    vertex(solidBottomLeft + digitHeight, stripHeight);
    for (int i = 0; i<digitNumber+1; i++) {
      //-1 due to integer math?
      bezierVertex(solidBottomLeft+digitHeight/2-radical+20, stripHeight-((digitWidth/4)-curve)-(digitWidth*i), solidBottomLeft+digitHeight/2+radical, stripHeight-(digitWidth/4+curve)-(digitWidth*i), solidBottomLeft, stripHeight - digitWidth/2-(digitWidth*i));
      bezierVertex(solidBottomLeft+digitHeight/2+radical, stripHeight-((digitWidth/4)*3-curve)-(digitWidth*i), solidBottomLeft+digitHeight/2-radical+20, stripHeight-((digitWidth/4)*3+curve)-(digitWidth*i), solidBottomLeft+digitHeight, stripHeight - digitWidth-(digitWidth*i));
      //bezierVertex(digitHeight/2+radical, (digitWidth/4)*3-curve+(digitWidth*i), digitHeight/2-radical, (digitWidth/4)*3+curve+(digitWidth*i), digitHeight, digitWidth+(digitWidth*i));
    }
    endShape();
    popMatrix();
  }
}