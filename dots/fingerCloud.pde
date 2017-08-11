
class FingerCloud {

  int x;
  int y;
  int size;
  int density;
  String style;
  int[][] positions = {{0, 0}};

  FingerCloud(int size_in) {
    size = size_in;
  }

  void populate(int density_in, String style_in) {
    density = density_in;
    style = style_in;
    //currently only one style 
    //instead of the random, there could also be a regular or gradient assign proccess
    //plan on throwing a switch statement in here
    positions = new int[density][2];

    for (int i = 0; i < positions.length; i++) {
      println("did this happen");

      positions[i] = recursiveNumbers();
    }
  }

  void place(int x_in, int y_in) {
    x=x_in;
    y=y_in;   

    for (int i = 0; i < positions.length; i++) {

      point(x+positions[i][0], y+positions[i][1]);
    }
  }


  int[] recursiveNumbers() {
    int arbitrary_X = int(random(-size/2, size/2));
    int arbitrary_Y = int(random(-size/2, size/2));
    println("did it recurse?");

    if (sqrt((arbitrary_X*arbitrary_X)+(arbitrary_Y*arbitrary_Y)) > size/2) {
      return this.recursiveNumbers();
    } else {  

      int[] pair = {arbitrary_X, arbitrary_Y};

      return pair;
    }
  }
}