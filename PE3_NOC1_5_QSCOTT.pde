void setup () {
  size(640,360);
}

void draw() { 
  background(255);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  mouse.sub(center); // PVector subtraction
  
float m = mouse.mag(); // magnitude of a vec can b accessed via mag() function
fill (0);               // here its used as the width of a rectangle drawn @ the top of the window
rect(0, 0, m, 10);
  
  translate(width/2, height/2); // draw a line to rep vector
  line(0, 0, mouse.x, mouse.y);
}
