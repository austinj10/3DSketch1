float rotx, roty;

void setup() {
  size(800, 800, P3D);
  //rotx = radians(45);
  //roty = radians(45);
}

void draw() {
  background(0);

  translate(width/2, height/2, 0);

  ball(0,0,0,255,150);
 
  cube(width/2, height/2, 0, 255, 200);
  cube(width/2, -height/2,0,255,200);
  cube(-width/2, height/2, 0, 255, 200);
  cube(-width/2, -height/2,0,255,200);
}

void cube(float x, float y, float z, float c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(200);
  strokeWeight(3);
  box(size); // side length
  popMatrix();
}

void ball(float x, float y, float z, float c, float size){
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(200);
  strokeWeight(3);
  sphere(size); 
  popMatrix();
}



void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.004;
  roty = roty + (pmouseX - mouseX)*-0.004;
}
