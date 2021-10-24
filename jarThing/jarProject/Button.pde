 public class Button{
  PImage image;
  float center_x, center_y;
  float w, h;
  
   public Button(String filename, float scale, float x, float y){
   image = loadImage(filename);
   w = image.width *scale;
   h = image. height *scale;
   center_x = x;
   center_y = y;
    
  }
  
  public void display(){
     image(image, center_x, center_y, w, h); //shows the image from the center x and y with a certain w and h 
       
  }
  
  
  
  
 }
