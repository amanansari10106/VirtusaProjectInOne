using System;

//for file handling.
using System.IO;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main()
        {
            string s;

            Console.WriteLine("Content before append:");
            s = File.ReadAllText("testfile.TXT");
            Console.WriteLine(s);

            Console.WriteLine("Enter text to append into file:");
            s = Console.ReadLine();

            File.AppendAllText("testfile.TXT", s);

            Console.WriteLine("Content after append:");
            s = File.ReadAllText("testfile.TXT");
            Console.WriteLine(s);

        }
    }
}