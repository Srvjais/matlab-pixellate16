  //initialize motors
int left_motor[]={4,3};
int right_motor[]={8,7};
void setup()
{
   Serial.begin(9600);
   pinMode(3,OUTPUT);
   pinMode(4,OUTPUT);        //positive
   pinMode(7,OUTPUT);
   pinMode(8,OUTPUT);        //positive
}

void loop() 
{
  
  char movekey = 'p';
  if(Serial.available()){
      movekey = Serial.read();   
  }
  if (movekey=='w')
    {
      forward();
      delay(200);
      motorstop();
    }
   else if (movekey=='s')
   {
    reverse();
    delay(500);
    motorstop();
   }
   
   
   else if (movekey=='a')
   {
    turnleft();
    delay(15);
    motorstop();
   }
    else if (movekey=='A')
   {
    turnleft();
    delay(30);
    motorstop();
   }
    else if (movekey=='q')
   {
    turnleft();
    delay(65);
    motorstop();
   }
    else if (movekey=='Q')
   {
    turnleft();
    delay(130);
    motorstop();
   }

   
   else if (movekey=='d')
   {
    turnright();
    delay(15);
    motorstop();
   }
    else if (movekey=='D')
   {
    turnright();
    delay(30);
    motorstop();
   }
    
     else if (movekey=='e')
   {
    turnright();
    delay(65);
    motorstop();
   } 
     else if (movekey=='E')
   {
    turnright();
    delay(130);
    motorstop();
   }

   
}

//creating functions
void forward()
{
  digitalWrite(3,HIGH);
digitalWrite(4,LOW);
digitalWrite(7,HIGH);
digitalWrite(8,LOW);
  delay(25);
}
void reverse()
{
   digitalWrite(3,LOW);
digitalWrite(4,HIGH);
digitalWrite(7,LOW);
digitalWrite(8,HIGH);
  delay(25);
}
void turnleft()
{
  digitalWrite(8,HIGH);//2
  digitalWrite(7,LOW);//3

  digitalWrite(3,HIGH);//9
  digitalWrite(4,LOW);//8
  delay(25);
}
void turnright()
{
  digitalWrite(7,HIGH);
  digitalWrite(8,LOW);

  digitalWrite(4,HIGH);
  digitalWrite(3,LOW);
  delay(25);
}
void motorstop()
{
  digitalWrite(3,LOW);
  digitalWrite(4,LOW);

  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
  delay(1000);
}


