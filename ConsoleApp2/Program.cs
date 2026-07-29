using System;

namespace ConsoleApp2
{
    // Interface
    interface IPayroll
    {
        void CalculateSalary();
    }

    // Base Class
    class Employee
    {
        public int Id;
        public string Name;

        public Employee(int id, string name)
        {
            Id = id;
            Name = name;
        }

        public virtual void Display()
        {
            Console.WriteLine("Employee ID : " + Id);
            Console.WriteLine("Employee Name : " + Name);
        }
    }

    // Derived Class
    class Manager : Employee, IPayroll
    {
        public double Salary;

        public Manager(int id, string name, double salary)
            : base(id, name)
        {
            Salary = salary;
        }

        public void CalculateSalary()
        {
            Console.WriteLine("Manager Salary : $" + Salary);
        }

        public override void Display()
        {
            base.Display();
            CalculateSalary();
        }
    }

    // Second Derived Class
    class Developer : Employee, IPayroll
    {
        public int Hours;
        public double Rate;

        public Developer(int id, string name, int hours, double rate)
            : base(id, name)
        {
            Hours = hours;
            Rate = rate;
        }

        public void CalculateSalary()
        {
            Console.WriteLine("Developer Salary : $" + (Hours * Rate));
        }

        public override void Display()
        {
            base.Display();
            CalculateSalary();
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            // Polymorphism
            Employee emp;

            emp = new Manager(101, "Saurabh", 60000);
            Console.WriteLine("----- Manager Details -----");
            emp.Display();

            Console.WriteLine();

            emp = new Developer(102, "Rahul", 40, 500);
            Console.WriteLine("----- Developer Details -----");
            emp.Display();

            Console.ReadKey();
        }
    }
}