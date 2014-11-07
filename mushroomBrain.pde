// Visualization of data from psilocibin brain research
// Data supplement originates in "Homological scaffolds of brain functional networks" under the Creative Commons Licence
// by G. Petri, P. Expert, F. Turkheimer, R. Carhart-Harris, D. Nutt, P. J. Hellyer and F. Vaccarino


// Processing sketch by Leó Stefánsson 2014


XML xml;
Edge[] edges; 

void setup() {
  xml = loadXML("rsif-2014-0873-File002.gexf");
  size(800, 800);
  stroke(0, 0, 0, 5);
  strokeWeight(1);
  background(0);
  XML graph = xml.getChild("graph");
  XML nodes = graph.getChild("nodes");
  XML edgesXML = graph.getChild("edges");

  XML[] e = edgesXML.getChildren("edge");
  print(e[0].listAttributes());

  edges = new Edge[e.length];

  for (int i = 0; i < e.length; i++) {
    // print (e[i].getString("id")+"\n");
    //Edge(int ident, int src, int trgt, float wght, float xpos, float ypos, float s);
    int id = int(e[i].getString("id"));
    int source = int(e[i].getString("source"));
    int target = int(e[i].getString("target"));
    float weight = float(e[i].getString("weight"));
    
   edges[i] = new Edge(id, source, target, weight, sin(i)*width/2+width/2, cos(i)*height/2+height/2, 5);
  }
  for (int i = 0; i < edges.length; i++) {
    float x1 = edges[i].x; 
    float y1 = edges[i].y;
    float minWeight = 0;
    for (int j = 0; j < edges.length; j++) {
      if (edges[j].id == edges[i].target && edges[i].weight > minWeight) {
        float x2 = edges[j].x;
        float y2 = edges[j].y;
        stroke(255,255,255,edges[j].weight);
        line(x1, y1, x2, y2);
      }
    }
  }
  saveFrame("002.png");
}

void draw() {
  
}


// Sketch prints:
// 0, Capra hircus, Goat
// 1, Panthera pardus, Leopard
// 2, Equus zebra, Zebra

