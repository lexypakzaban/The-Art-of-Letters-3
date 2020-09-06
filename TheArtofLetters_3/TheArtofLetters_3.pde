TextReader myTR;
PFont wordFont;

void setup()
{
  size (1000,200);
  myTR = new TextReader("DaveBarry.txt");
  wordFont = createFont("sans-serif",36);
  textFont(wordFont);
  noLoop();

}

void draw()
{
  background(0);
  for(int x=0; x<1000; x = x + 1)
  {
    fill(noise(x*50)*200, noise(x*50)*200, noise(x*50)*200);
    text(myTR.nextLetter(),x*2,noise(x*50)*200);
  }
  save("resultInWindow.png");
}
