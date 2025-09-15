using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace democlass
{
    internal class student
    {
        int student_id;
       public  string name;
        public int age;
            string contact;
            string email;
        int marks;


        public void display()
        {
            Console.WriteLine("about students");
            Console.WriteLine("name : {name} ");
            Console.WriteLine(name);
        }

        public void totmarks() { }

        public void grade() { }

        public void initialize()
        {
            student_id = 1;
            name = "konda";

        }

         student(int id,
         string name,
         int age,
        string contact,
        string email,
        int marks)
        {
             student_id = id;
         name=name;
             age = age;
         contact = contact;
         email=email;
         marks=marks;

    }




    }
}
