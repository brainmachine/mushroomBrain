XML xml;


void setup() {
  xml = loadXML("rsif-2014-0873-File001.gexf");

  XML graph = xml.getChild("graph");
  XML nodes = graph.getChild("nodes");
  XML edges = graph.getChild("edges");
  
  XML[] e = edges.getChildren("edge");
  print(e[0].listAttributes());
 
  Edge[] points = new Edge[e.length];
  
  for (int i = 0; i < e.length; i++) {
    // print (e[i].getString("id")+"\n");
    //Edge(int ident, int src, int trgt, float wght, float xpos, float ypos, float s);
    int id = int(e[i].getString("id"));
    int source = int(e[i].getString("source"));
    int target = int(e[i].getString("target"));
    float weight = float(e[i].getString("weight"));
    print(weight);
  // points[i] = new Edge(
  }
  
   
}

void draw() {
  
}


// Sketch prints:
// 0, Capra hircus, Goat
// 1, Panthera pardus, Leopard
// 2, Equus zebra, Zebra
