XML xml;
Edge edge; 


void setup() {
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

// Sketch prints:
// 0, Capra hircus, Goat
// 1, Panthera pardus, Leopard
// 2, Equus zebra, Zebra
