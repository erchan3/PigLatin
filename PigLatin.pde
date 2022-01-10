public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public int firstVowelIndex(String word)
{
    String[] vowels = {"a", "e", "i", "o", "u"};
    for (int i = 0; i < word.length(); i++)
    {
        for (int j = 0; j < vowels.length; j++)
        {
            if (word.substring(i, i+1).equals(vowels[j]))
            {
                return i;
            }
        }
    }
    return -1;
}

public String pigLatin(String word)
{
    int n = firstVowelIndex(word);
    if (n == -1)
    {
        return word + "ay";
    } else if (n == 0)
    {
        return word + "way";
    } else if (n == 1 && word.substring(0, 2).equals("qu"))
    {
        return word.substring(2) + "quay";
    } else
    {
        return word.substring(n) + word.substring(0, n) + "ay";
    }
}
