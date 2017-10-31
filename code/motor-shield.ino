const byte leftDirection = 12;
const byte rightDirection = 13;
const byte leftSpeed = 3;
const byte rightSpeed = 11;

void setup() {
	pinMode(leftDirection, OUTPUT);
	pinMode(rightDirection, OUTPUT);
}

void loop() {
	robotForwards();
}

void robotForwards() {
	digitalWrite(leftDirection, HIGH);
	analogWrite(leftSpeed, 255);
	digitalWrite(rightDirection, HIGH);
	analogWrite(rightSpeed, 255);
}