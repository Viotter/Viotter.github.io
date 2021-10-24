  
  //  private float currentValue, keyCounter, previousKeyCounter;
  //  private String textValue;
    //private char keyInput, c;
    //private boolean keyReleased;

PImage sup; 
class TextBoxNew{
    private int x, y, boxWidth, boxHeight; //has an x, y, width, and height
    //textValue is what the box prints
    TextBoxNew(int x, int y, int boxWidth, int boxHeight){
        this.x = x;
        this.y = y;
        this.boxWidth = boxWidth;
        this.boxHeight = boxHeight;
        sup =  loadImage("coolBlue.jpg");
    }
    
    
    void draw( String a){
        drawBox();
          
        drawText(a); //draws the box based on its width, height, etc
    } 
        void draw(){//another draw that doesn't need input
        drawBox();
       drawText(" "); 
    }
    void drawBox(){

        stroke(90, 0, 0);//the outline color of the box
        fill(900, 0, 1200);//the fill
        rect(x, y, boxWidth, boxHeight);//the rectangle
    }
    void drawText(String a){
        textAlign(CENTER+100, CENTER);
        textSize(14);
        fill(0,0,0);
        
        if(textWidth(a)<300){
        text(a, x + 5, y + boxHeight/2);
        }
        else if(textWidth(a)>=300){ 
       text(a.substring(0, a.length()/2), x+5, y+boxHeight/2); 
       //int z = a.length(); 
       text(a.substring(a.length()/2,a.length()-1),x+5, y+boxHeight/2+20); 
          
        }
        
        
      }
     

    }
