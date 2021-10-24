 PImage coolBlue,backgroundNumber2, backgroundNumber3, backgroundNumber4, listLeftButton; //the button and background
 int timesGone, backgroundNumber; 
 ArrayList<String> namesToChoose,definitionsToChoose,fullUnchangedNames, fullUnchangedDefinitions; //makes an array list of inputed names
 String allBefore, extraString;  //the string that gets inputed into the text box
TextBoxNew textBox1, textBoxOutput; //two textboxes, for input and output
randomGenerator whatMakesOutput; 
 
 Button coolButton1, coolButton2 , coolButtonNumber1, coolButtonNumber2, coolButtonNumber3, goButton,definitionButton;  //different buttons
 ArrayList<Button>fullList;  //an array list of buttons which makes it easier to display them all at the same time
 
void setup(){
  timesGone = 0;
  backgroundNumber=0;
 String allBefore = " ";  //makes an original string
 String extraString = " "; 
 String wordOrDef = "Word!: "; 
 fullUnchangedDefinitions =  new ArrayList<String>();
 fullUnchangedNames =  new ArrayList<String>();
 definitionsToChoose = new ArrayList<String>();
 namesToChoose = new ArrayList<String>();  //initializes the array
    coolBlue = loadImage("background2.jpg"); //coolBlue is the background image
    backgroundNumber2 = loadImage("background3.jpg"); 
     backgroundNumber3 = loadImage("background4.jpg"); 
     backgroundNumber4 = loadImage("background2.jpg"); 
   size(800,600); // the size of the screen //size
  imageMode(CENTER); //centers the sprite? IDK
  
 //  listLeftButton=loadImage("crate.png");  //button that should load the list
   background(coolBlue); //sets the background
   //println(PFont.list()); 
    textBox1 = new TextBoxNew(0, 50, 300, 75); //makes a textbox that is 50 left 50 down 200 wide 50 tall
     textBox1.draw(allBefore); //draws the texbox with the phrase "Type in a Value". 
     
       textBoxOutput = new TextBoxNew(250, 300, 300, 75); // Makes a textbox which will output answers
    //   textBoxOutput.draw(); 
     //textBox2.draw(allBefore);
      fullList = new ArrayList<Button>(); //initizlises the array
      whatMakesOutput = new randomGenerator(namesToChoose,definitionsToChoose );
  
}
void draw(){ 
 // frameRate(60)
  //  String sonic = "type in a value";
  //  PFont f = createFont("Georgia", 24);
 //  textFont(f); 
 //  textSize(24); 
 //  text(sonic, 100, 600);
   coolButton1 = new Button("three.jpg", 1, 150, 25);//makes buttons and adds them to the button list
   //fullList.add(coolButton1); 
  // coolButton2 = new Button("snow.png", 1.5, 700.0, 350.0); 
  // fullList.add(coolButton2); 
   coolButtonNumber1= new Button("crate.png", 1.5, 25, 425);
   fullList.add(coolButtonNumber1); 
   coolButtonNumber2= new Button("two.jpg", 1, 150, 25);
  // coolButtonNumber2.display(); 
   //fullList.add(coolButtonNumber2); 
   coolButtonNumber3= new Button("three.jpg", 1, 150, 25);
   //fullList.add(coolButtonNumber3); 
   goButton= new Button("go.jpg",1, 70, 500.0);
   definitionButton = new Button("definition.jpg", 1, 70, 570); 
   fullList.add(definitionButton); 
   fullList.add(goButton); 
   displayAll(); //method which takes the buttons and displays them beause they were in a list
     if(timesGone == 0){
      coolButtonNumber3.display(); 
      
    }
  
  
}
void displayAll(){
  for(Button a: fullList){
    a.display(); 
  }
  
}

void keyPressed(){//when keys are pressed it is assumed that they are typing in a name
  
  if(key == BACKSPACE){
    
     allBefore = allBefore.substring(0,allBefore.length()-1); //allBefore is the string being typed and if there is a backspace it is one character shorter
      textBox1.draw(allBefore);//draws the string in the text box
    
  }
 
  
  else if(key == ENTER){ // enter adds it to the list allBefore
  
    if(timesGone%2 ==0){
      if(extraString != null){
    namesToChoose.add(extraString+allBefore); 
    fullUnchangedNames.add(extraString +allBefore); 
      }
      else{
         namesToChoose.add(allBefore); 
         fullUnchangedNames.add(allBefore); 
      }
    allBefore = " "; //resets all before to be nothing
    coolButtonNumber2.display(); 
    textBox1.draw(allBefore);//then it shows the blank text box 
    timesGone++; 
    }
    else{
      if(extraString != null){
      definitionsToChoose.add(extraString+allBefore); 
      fullUnchangedDefinitions.add(extraString +allBefore); 
      }
      else{
        definitionsToChoose.add(allBefore); 
        fullUnchangedDefinitions.add(allBefore); 
      }
      
      allBefore = " "; //resets all before to be nothing
    coolButtonNumber3.display(); 
       textBox1.draw("Word: "+allBefore);
     timesGone++;  
    }
  }
  
  
  else{
    if(allBefore!=null){
  allBefore = allBefore+str(key); //the string adds the character that was typed
  if(textWidth(allBefore) <300){
  textBox1.draw(allBefore); // the textbox updates itself
  }
  else if(textWidth(allBefore)>=300){
    extraString = allBefore;
    allBefore = " "; 
  }
    }
    else{
      allBefore = str(key);
      textBox1.draw(allBefore); 
    }
    
  }
  
}

void mousePressed() {
  if(mouseX >630 && mouseX<715){
    if(mouseY>305 && mouseY<365){
      
    background(225); 
    textBox1.draw();
    textBoxOutput.draw(); 
    }
  }
  
   if(mouseX >0 && mouseX<75){
    if(mouseY>380 && mouseY<460){
      
   if(backgroundNumber==0){
    background(backgroundNumber2); 
    backgroundNumber++; 
   }
   else if(backgroundNumber==1){
    background(backgroundNumber3); 
    backgroundNumber++; 
   }
   else if(backgroundNumber==2){
    background(backgroundNumber4); 
    backgroundNumber=0; 
   }
   
    textBox1.draw();
    textBoxOutput.draw(); 
    }
  }
  
  if(mouseX >0 && mouseX<150){
    if(mouseY>550 && mouseY<600){
    textBox1.draw();
    textBoxOutput.draw(); 
    if(whatMakesOutput.savedDefinition != null){
    textBoxOutput.draw(whatMakesOutput.savedDefinition); 
    }
    else{
       textBoxOutput.draw("You did not save your description!"); 
    }
    }
  }
  
if(mouseX >0 && mouseX<150){
    if(mouseY>470 && mouseY<525){ 
      
     if(whatMakesOutput.Words.size()>0){
     textBoxOutput.draw(whatMakesOutput.generateNumber());
     }
     else if(whatMakesOutput.Words.size()==0){
       
      textBoxOutput.draw("DONE!!!");  
      whatMakesOutput.savedDefinition = "done!!!";
      whatMakesOutput.Words= fullUnchangedNames; 
      whatMakesOutput.Definitions = fullUnchangedDefinitions; 
   //  whatMakesOutput = new randomGenerator(namesToChoose,definitionsToChoose );
       
     }
    }
  }
  
  
}
