
class randomGenerator{
 
 ArrayList<String> Words; //the actual words or ideas
  ArrayList<String> Definitions; // Each word has a definition and the indexes align.
  String savedDefinition; //if the user asks for the definition, if not hten it skips
randomGenerator(ArrayList<String> WordsIn, ArrayList<String> DefinitionsIn){
   Words = WordsIn; //just takes in from when called
  Definitions = DefinitionsIn; 
   
}


String generateNumber(){
  int a=  Words.size()-1; //the size of the words list, the amount of definitions also(probably)
  
  double c= (Math.random()*a); //the double verson
  int b = (int) c; //the double verson getting cast down.  SO 0-size-1
 String whatsReturned =  Words.get(b);
 if(Definitions.size()>0&&b<Definitions.size()){
 savedDefinition = Definitions.get(b); //asigns the definition String to the value of definitions at that spot
 }
 Words.remove(b);//removes the words, and if there is  a definitoin at that spot 
 if(Definitions.size()>0&&b<Definitions.size()){
 Definitions.remove(b); 
 }
  return whatsReturned; //the word
  
}

}
