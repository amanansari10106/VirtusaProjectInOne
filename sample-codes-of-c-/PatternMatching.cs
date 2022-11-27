using System;

public class PatternMatching{
	
static void PrintUppercaseIfString(object arg)
{
	// If arg is a string:
	// convert it to a string
	// and assign it to variable message
	if (arg is string message)
	{
		Console.WriteLine($"{message.ToUpper()}");
	}
	else
	{
		Console.WriteLine($"{arg} is not a string");
	}
}

// Driver code
static public void Main()
{
	string str = "Geeks For Geeks";
	int number = 42;
	object o1 = str;
	object o2 = number;

	PrintUppercaseIfString(o1);
	PrintUppercaseIfString(o2);
}
}