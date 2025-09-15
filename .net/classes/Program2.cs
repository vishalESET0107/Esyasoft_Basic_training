namespace democlass
{
    internal class Program
    {
        static void Main(string[] args)
        {
            student student1 = new student();
            student1.display();
            student1.name = "vishal";

            student1.initialize();
            student1.display();

        }
    }
}
