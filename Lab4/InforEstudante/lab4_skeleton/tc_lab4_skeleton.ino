#define trigPin 13
#define echoPin 12

long measureDistance() {
  long duration;
  
  //Send pulse
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  //Measure time until echo
  duration = pulseIn(echoPin, HIGH);
  //Compute distance
  distance = duration/58;

  return distance;
}

void setup() {
  Serial.begin (9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  ...
}

void loop() {

  ...

}

