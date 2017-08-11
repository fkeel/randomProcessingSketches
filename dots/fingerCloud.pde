
class FingerCloud {
  
  int x;
  int y;
  int size;
  int density;
  String style;
  int[][] positions;
  
  FingerCloud(int size_in){
    size = size_in;
    
  }
  
  void populate(int density_in, String style_in){
    density = density_in;
    style = style_in;
    
  }
  
  void drawFinger(int x_in, int y_in){
    x=x_in;
    y=y_in;   
    
  }
  
}