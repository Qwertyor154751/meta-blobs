//Blob b;
Blob[] blobs = new Blob[5]; 
void setup()
{
  size (640,360);
  colorMode(HSB);
  for (int i=0;i<blobs.length;i++)
  {
    blobs[i] = new Blob(random(width),random(height));
  }
  //b = new Blob(100,100); 
}
void draw()

{
  background(0);
  loadPixels();
  for(int x = 0; x < width;x++)
  {
    for(int y = 0; y < height;y++)
    {
      int index= x+(y*width);
      float sum=0;
      for (Blob b : blobs)
      {
        float d =dist(x,y,b.pos.x,b.pos.y);
        sum += b.r * 150/ d;
        //pixels[index] = color(constrain(sum,0,220),255,255);
        pixels[index] = color(sum-50,255,250);
      } 
    }
  }
  updatePixels();
  for (int i=0;i<blobs.length;i++)
  {
 // blobs[i].show();
  blobs[i].update();
}
}
