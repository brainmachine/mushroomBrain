XML xml;
Edge[] edges; 

void setup() {
  xml = loadXML("rsif-2014-0873-File001.gexf");
  size(800, 800);
  stroke(0, 0, 0, 5);
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
    //print(weight);

    float radius=width/2;
    float angle=TWO_PI/(float)e.length;
    float x = radius*sin(angle*i); 
    float y = radius*cos(angle*i);

    edges[i] = new Edge(id, source, target, weight, x, y, weight*radius);
  }
}

void draw() {
  for (int i = 0; i < edges.length; i++) {
    float x1 = edges[i].x; 
    float y1 = edges[i].y;
    for (int j = 0; j < edges.length; j++) {
      if (edges[j].id == edges[i].target) {
        float x2 = edges[j].x;
        float y2 = edges[j].y;
        line(x1, y1, x2, y2);
      }
    }
  }
}


// Sketch prints:
// 0, Capra hircus, Goat
// 1, Panthera pardus, Leopard
// 2, Equus zebra, Zebra

