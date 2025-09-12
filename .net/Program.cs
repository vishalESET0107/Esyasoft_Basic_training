namespace banking_application
{
    internal class Program
    {
        static string accountNumber = "";
        static string accountHolderName = "";
        static double balance = 0;
        static bool accountCreated = false;
        static void Main(string[] args)
        {

            Console.WriteLine("Welcome to Simple Banking Application!");

            int num1;
            do
            {
                Console.WriteLine("\nPlease select an option:");
                Console.WriteLine("1. Create a new bank account");
                Console.WriteLine("2. Deposit money");
                Console.WriteLine("3. Withdraw money");
                Console.WriteLine("4. Display account details");
                Console.WriteLine("5. Exit");
                Console.Write("please enter: ");

                num1 = Convert.ToInt32(Console.ReadLine());
                    switch (num1)
                    {
                        case 1:
                            CreateAccount();
                            break;
                        case 2:
                            DepositMoney();
                            break;
                        case 3:
                            WithdrawMoney();
                            break;
                        case 4:
                            DisplayAccountDetails();
                            break;
                        case 5:
                            Console.WriteLine("Thank you");
                            break;
                        default:
                            Console.WriteLine("Invalid choice. Please try again.");
                            break;
                    }
                
                else
                {
                    Console.WriteLine("Invalid input.");
                }

            } while (num1 != 5);
        }

        static void CreateAccount()
        {
            if (accountCreated)
            {
                Console.WriteLine("Account already exists.");
                return;
            }

            Console.Write("Enter account number: ");
            accountNumber = Console.ReadLine();

            Console.Write("Enter account holder name: ");
            accountHolderName = Console.ReadLine();

            balance = 0;
            accountCreated = true;

            Console.WriteLine("Account created successfully!");
        }

        static void DepositMoney()
        {
            double amount;
            Console.Write("Enter amount to deposit: ");
            amount = Console.ReadLine();

            
                if (amount > 0.0)
                {
                    balance += amount;
                    Console.WriteLine($"Successfully deposited ${amount}. New balance: ${balance}");
                }
                else
                {
                    Console.WriteLine("Invalid amount. Please enter a positive value.");
                }
            }
            
        }

        static void WithdrawMoney()
        {
            double amount;
            Console.Write("Enter amount to withdraw: ");
            amount = Console.ReadLine();
            
                if (amount > 0)
                {
                    if (amount <= balance)
                    {
                        balance -= amount;
                        Console.WriteLine($"Successfully withdrew ${amount}. New balance: ${balance}");
                    }
                    else
                    {
                        Console.WriteLine("Insufficient funds. Withdrawal amount exceeds available balance.");
                    }
                }
                
            }
            
        }

        static void DisplayAccountDetails()
        {
            if (!accountCreated)
            {
                Console.WriteLine("Please create an account first.");
                return;
            }

            Console.WriteLine("\nAccount Details:");
            Console.WriteLine($"Account Number: {accountNumber}");
            Console.WriteLine($"Account Holder: {accountHolderName}");
            Console.WriteLine($"Balance: ${balance}");
        }










































