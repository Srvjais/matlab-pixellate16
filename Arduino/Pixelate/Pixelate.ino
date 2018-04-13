

void setup()
{
   Serial.begin(9600);
   pinMode(3,OUTPUT);
   pinMode(4,OUTPUT);        //positive
   pinMode(5,OUTPUT);
   pinMode(6,OUTPUT);        //positive
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
   
    }
   else if (movekey=='s')
   {
    reverse();
 
   }
   
   
   else if (movekey=='a')
   {
    turnleft();
 
   }
 

   
   else if (movekey=='d')
   {
    turnright();
   
   }
   
  
else if (movekey=='u')
   {
    motorstop();
 
   }
   
}

//creating functions
void forward()
{
  digitalWrite(3,HIGH);
digitalWrite(4,LOW);
digitalWrite(5,HIGH);
digitalWrite(6,LOW);

}
void reverse()
{
   digitalWrite(3,LOW);
digitalWrite(4,HIGH);
digitalWrite(5,LOW);
digitalWrite(6,HIGH);

}
void turnleft()
{
  digitalWrite(6,HIGH);//2
  digitalWrite(5,LOW);//3

  digitalWrite(3,HIGH);//9
  digitalWrite(4,LOW);//8

}
void turnright()
{
  digitalWrite(5,HIGH);
  digitalWrite(6,LOW);

  digitalWrite(3,LOW);
  digitalWrite(4,HIGH);

}
void motorstop()
{
  digitalWrite(3,LOW);
  digitalWrite(4,LOW);

  digitalWrite(5,LOW);
  digitalWrite(6,LOW);

}


