import processing.sound.*;
SinOsc sound;

String pi; // = loadStrings("piDigits.txt")[0];
int index = 0;

void setup() {
  size(640, 360);
  background(0);

  sound = new SinOsc(this);
  pi = loadStrings("piDigits.txt")[0];
  
  for (index = 0; index < pi.length(); index++)
  {
    sound.play((pi.charAt(index)-48)*50,0.5);
    print((pi.charAt(index)-48));
    delay(250);
    sound.stop();
    delay(1);
  }
}      

void draw() {

}
