const byte leftForward = 4;
const byte leftReverse = 5;
const byte rightForward = 10;
const byte rightReverse = 11;

void setup() {
	pinMode(leftForward, OUTPUT);
	pinMode(leftReverse, OUTPUT);
	pinMode(rightForward, OUTPUT);
	pinMode(rightReverse, OUTPUT);
}

void loop() {
	robotForwards();
}

void robotForwards() {
	digitalWrite(leftForward, HIGH);
	digitalWrite(leftReverse, LOW);
	digitalWrite(rightForward, HIGH);
	digitalWrite(rightReverse, LOW);
}
