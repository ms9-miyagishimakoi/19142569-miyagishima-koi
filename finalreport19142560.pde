float baseH = 50;
float armL1 = 35;
float armL2 = 40;
float armL3 = 30;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float armW4 = 40;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(120, 120, 120, 0, 0, 60, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
   
    if(key == 'k'){
      angle1 = angle1 + dif;
    }
    if(key == 'K'){
      angle1 = angle1 - dif;
    }
    if(key == 'o'){
      angle2 = angle2 + dif;
    }
    if(key == 'O'){
      angle2 = angle2 - dif;
    }
    if(key == 'i'){
      angle3 = angle3 + dif;
     }
    if(key == 'I'){
      angle3 = angle3 - dif;
     
    }
  }
  
  //base1
  translate(0,0,baseH-10);
  fill(0);
  box(35,35,20);
  
  //base2
  translate(0,0,baseH/2);
  fill(175);
  box(10,10,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-10/2,baseH/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(-armW2,armL1-2*armW2,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,armW2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  //go to 3rd joint
  rotateY(radians(angle3));
  translate(armW4/4+2.5, armL2-2*armW3+5, 0);
  fill(100);
  box(armW4,armW3,10);
  
  //Tip1
  translate(armW4/2+2.5,0,0);
  fill(0);
  box(5,2.5,2);
  
  //Tip2
  translate(2.5+1,0,0);
  fill(0);
  box(2,6,2);
  
  //Tip3
  translate(1,2,0);
  fill(0);
  box(2,2,2);
  
  //Tip4
  translate(0,-4,0);
  fill(0);
  box(2,2,2);
}
