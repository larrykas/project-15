class Account
  def initialize(balance, name, account_number) 
    @balance = balance
    @name = name
    @account_number = account_number
    
    if name == nil
      puts "That is not a valid name"
      else
        puts "#{name}"
    end
  end

   def deposit(amount)
     @balance += amount
   end

   def withdraw(amount) 
     if amount > 0 && amount <= @balance
         
         @balance -= amount
         
         puts "You withdrew $#{amount}. Below is Your Current Account Status"
         
         elsif amount > @balance
         
         puts "You have insufficient balance. See Your Account Status below"
         
         else
         
         puts "Error: Invalid Entry"
         
     end
      
   end
 
   def balance
     puts "Account Name: " + @name
     puts "Account number: " + @account_number.to_s 
     puts "Balance: " + "$" + @balance.to_s
   end

   def transfer(amount, target_account)
     @balance -= amount
     target_account.deposit(amount)
   end

   def status
     return @balance
   end
 end
 
 a = Account.new(50.51, "Hopkins", 012)
 a.deposit(1.22)
 a.withdraw(5000.73)
 puts a.balance

############################################# 

str = '$55.34'
str.gsub(/[$]/, "").to_f
