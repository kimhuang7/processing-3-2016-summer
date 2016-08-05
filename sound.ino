int speakerPin = 12;
 
int numTones = 8;
int tones[] = {261, 294, 330, 349, 392, 440, 494, 523};
//            mid C  D    E    F    G    A    B    C 
 
void setup()
{
  for (int i = 0; i < numTones; i++)
  {
    tone(speakerPin, tones[i]);
    delay(500);
  }
  noTone(speakerPin);
  tone(speakerPin, tones[1]);
  delay(600);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[4]);
  delay(600);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[3]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[4]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[5]);
  delay(600);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[4]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[3]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[2]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[3]);
  delay(400);
  noTone(speakerPin);
  delay(100);
  tone(speakerPin, tones[3]);
  delay(600);
   tone(speakerPin, tones[4]);
  delay(600);
  noTone(speakerPin);
  delay(100);

  noTone(speakerPin);
  
}
 
void loop()
{
}
