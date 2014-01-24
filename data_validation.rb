class Account
   attr_accessor :balance, :namee
   
  def initialize(balance, name, account_number) 
    @balance = balance
    @name = name
    @account_number = account_number
    
    if name == nil
      puts "That Is Not a Valid Name"
      else
        puts "#{name}"
    end
  end

   def deposit(amount)
     
     if amount.is_a? String
     amount = amount.gsub(/[$]/, "").to_f
     end
     
     if amount > 0
         
         @balance += amount
         
         puts "You've Deposited $#{amount}. Your New Balance is $#{@balance}"
         
         else
         
         puts "Deposit Error: Invalid Input For Deposit"
         
     end
     
   end

   def withdraw(amount)
     
     if amount.is_a? String
        amount = amount.gsub(/[$]/, "").to_f
         
     end
     
     if amount > 0 && amount <= @balance
         
         @balance -= amount
         
         puts "You withdrew $#{amount}. Below is Your Current Account Status"
         
         elsif amount > @balance
         
           puts "You Have Insufficient Balance. See Your Account Status below"
         
         else
         
           puts "Input Error: Invalid Entry"
         
     end
      
   end
 
   def balance
     puts "Account Name: " + @name
     puts "Account number: " + @account_number.to_s 
     puts "Balance: " + @balance.to_s
   end

   def transfer(amount, target_account)
 
     if amount.is_a? String
         amount = amount.gsub(/[$]/, "").to_f
     end
     
     if amount > 0 && amount <= @balance
         
         @balance -= amount
         
         puts "You've Transfered $#{amount} To #{target_account}'s Account. Your Current Balance is $#{@balance}"
         
         elsif amount > @balance
         
         puts "You Have Insufficient Balance. You Only Have $#{@balance} In Your Account"
         
         else
         puts "Error: Invalid Input. Your Transaction Was Not Successful"
     end
   end

   def status
     return @balance
   end
 end  
 
 a = Account.new(50.51, 'Hopkins', 012)
 #a.deposit('$1.22').to_f
 #a.deposit('cows')
 #a.deposit('$55.34')
 a.withdraw(-50)
 #puts a.balance
 b = Account.new(200, 'Paul', 014)
 b.transfer('$100', a)
############################################# 

#str = '$55.34'
#str.gsub(/[$]/, "").to_f
