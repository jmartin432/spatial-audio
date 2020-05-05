import netP5.*;
import oscP5.*;

OscP5 osc;
NetAddress oscDestination;

int headRadius = 15;
Source[] sources = new Source[3];
float x, y, z;
color[] colors = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255)};

void setup() {
  size(1000, 1000, P3D);
  //frameRate(25);
  osc = new OscP5(this, 6448);
  oscDestination = new NetAddress("localhost", 6449);
  lights();
  for (int i = 0; i < sources.length; i++){
    sources[i] = new Source(colors[i]);
  }
} 

void draw () {
  background(0);
  
  pushMatrix();
  translate(width/2, height/2, 0);
  stroke(255, 0, 0);
  noFill();
  box(500);
  popMatrix();

  for (int i = 0; i < sources.length; i++){
    pushMatrix();
    translate(width/2+sources[i].position.x, height/2+sources[i].position.y, sources[i].position.z);
    stroke(sources[i].col);
    sphere(headRadius);
    popMatrix();
    OscMessage sourceData = new OscMessage("/max/source/" + str(i));
    sourceData.add(new float[] {sources[i].position.x/100, sources[i].position.y/100, sources[i].position.z/100});
    osc.send(sourceData, oscDestination);
    sources[i].update();
  }
}

class Source {
  PVector position, velocity;
  color col;
  Source (color c) {
    position = PVector.random3D().mult(250);
    velocity = PVector.random3D();
    col = c;
    
  }
  void update() {
    if (position.x + velocity.x >= 250){
      velocity.x *= -1;
    }
    if (position.x + velocity.x <= -250){
      velocity.x *= -1;
    }
    if (position.y + velocity.y >= 250){
      velocity.y *= -1;
    }
    if (position.y + velocity.y <= -250){
      velocity.y *= -1;
    }
    if (position.z + velocity.z >= 250){
      velocity.z *= -1;
    }
    if (position.z + velocity.z <= -250){
      velocity.z *= -1;
    }
    position.add(velocity);
  }
}
