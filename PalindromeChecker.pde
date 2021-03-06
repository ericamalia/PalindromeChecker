public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
 
  String w = noSpaces(word);
  w = noCapitals(w);
  w = onlyLetters(w);

  if (w.equals(reverse(w))){
    return true;
  }
  else{
    return false;
  }//your code here
  
}


public String reverse(String str)
{
   String empty = new String();
   
  for (int i=0; i< str.length(); i++){
      String max = str.substring(i,i+1);
      empty = max + empty;
    
  }
  return empty;
}



public String noSpaces(String sWord){
  String emptyTwo = new String();
  for (int i=0; i< sWord.length(); i++){
    String max = sWord.substring(i,i+1);
    if (!max.equals(" ")){
      emptyTwo = emptyTwo + max;
    }
  }
  return emptyTwo;
}

public String noCapitals(String sWord){
  String bob = sWord.toLowerCase();
  return bob;
}

public String onlyLetters(String sString){
  String emptyThree = new String();
 
  for (int i=0; i< sString.length(); i++){
   
    if (Character.isLetter(sString.charAt(i)) == true){
      emptyThree = emptyThree +sString.charAt(i);
    }
  }
  return emptyThree;
}
