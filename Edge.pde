class Edge {
  // XML data
 String id; 
String source;
String target; 
String weight;

// made up graphical variables
float x;
float y; 
float size; // don't know if this makes sense yet


  // Constructor
  Edge(float xpos, float ypos, float s) {
    x = xpos; 
    y = ypos; 
    size = s; 
  }
  
  void drawEdge() {
     ellipse(x, y, size, size); 
  }
  

}
