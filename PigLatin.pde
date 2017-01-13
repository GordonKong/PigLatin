import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0; i < sWord.length(); i++)
	{
		String e = sWord.substring(i,i+1);
		if(e.equals("a") || e.equals("e") || e.equals("i") || e.equals("o") || e.equals("u"))
		return i;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	if(sWord.substring(0,2).equals("qu"))
	{
		String g = sWord.substring(0,2);
		String h = sWord.substring(2,sWord.length());
		return h + g + "ay";
	}
	if(findFirstVowel(sWord) >=1)
	{
		String a = sWord.substring(findFirstVowel(sWord), sWord.length());
		String b = sWord.substring(0, findFirstVowel(sWord));
		return a + b + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
