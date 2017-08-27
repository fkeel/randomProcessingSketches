
Strip secondStrip = new Strip(2, 4);
Strip thirdStrip = new Strip(2, 3);


void setup() {
  size(1600, 600);

  secondStrip.update(100, 0, 0, 100, 50);
  thirdStrip.update(50, 0, 0, 100, 5);
  secondStrip.drawStrip(0, 50);
  secondStrip.drawStrip(170, 50);
  secondStrip.drawStrip(340, 50);
//  thirdStrip.drawStrip(240, 20);
}