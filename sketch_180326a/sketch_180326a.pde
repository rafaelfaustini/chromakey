PImage imagem;
int sensibilidade=2;
void setup(){
  size(960, 720);
  imagem = loadImage("images-13.jpg");
  
}
void mouseWheel(MouseEvent event) {
  sensibilidade+=1;
  println(sensibilidade);
}
void mousePressed() {
  sensibilidade-=10;
  println(sensibilidade);
}

void draw(){
  image(imagem, 0 , 0 );
  loadPixels();
  imagem.loadPixels();
  for(int x = 0 ; x< width;x++){
    for(int y = 0; y<height;y++){  
   int loc = x+y*width;
  float r = red(imagem.pixels[loc]);
  float g = green(imagem.pixels[loc]);
  float b = blue(imagem.pixels[loc]);
  
  
  float[] comparacao = new float[3];
  comparacao[0] = 44;
  comparacao[1] = 84;
  comparacao[2] = 197;
 if((r+b) < g && g> 90)
  {
    
    pixels[loc] = color(255, 0, 0); 
    r=255;
    g=0;
    b=0;
      if(pixels[loc] == color(255, 0, 0))
  {
    int i=0;
  }

  }
  else
  {
    pixels[loc] = color(r, g, b);
  }
    }   
}  
updatePixels();
}
