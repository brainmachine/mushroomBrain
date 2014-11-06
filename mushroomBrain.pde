XML xml;
Edge edge; 


void setup() {
  edge = new Edge(10,10,10);
  xml = loadXML("rsif-2014-0873-File001.gexf");

  XML graph = xml.getChild("graph");
  XML nodes = graph.getChild("nodes");
  XML edges = graph.getChild("edges");
  
  XML[] e = edges.getChildren("edge");
  print(e[0].listAttributes());
  

  for (int i = 0; i < e.length; i++) {
    // print (e[i].getString("id")+"\n"); 
  }
  
   
}

void draw() {
  edge.drawEdge(10, 10, 10);
  
}


// Sketch prints:
// 0, Capra hircus, Goat
// 1, Panthera pardus, Leopard
// 2, Equus zebra, Zebra
