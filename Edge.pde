class Edge {
  // XML data
int id; 
int source;
int target; 
float weight;

// made up graphical variables
float x;
float y; 
float size; // don't know if this makes sense yet


  // Constructor
  Edge(int ident, int src, int trgt, float wght, float xpos, float ypos, float s) {
    
    id = ident; 
    source = src; 
    target = trgt; 
    weight = wght;
    // ------------
    x = xpos; 
    y = ypos; 
    size = s; 
  }
  
  void drawEdge() {
     ellipse(x, y, size*weight, size*weight); 
  }
  

}
