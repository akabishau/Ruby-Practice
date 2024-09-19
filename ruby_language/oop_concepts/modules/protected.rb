# bank_account.rb

class BankAccount
  attr_reader :balance, :account_holder

  def initialize(account_holder, initial_balance = 0)
    @account_holder = account_holder
    @balance = initial_balance
  end

  # Public method to initiate a transfer between accounts
  def transfer_to(another_account, amount)
    if amount > 0 && @balance >= amount
      withdraw(amount)
      another_account.deposit(amount)
      puts "Transferred #{amount} to #{another_account.account_holder}."
    else
      puts "Insufficient balance or invalid amount."
    end
  end

  ########################################
  # Protected Methods
  ########################################

  protected

  # Protected method to withdraw money (internal to account only)
  def withdraw(amount)
    @balance -= amount
    puts "#{amount} withdrawn. New balance: #{@balance}"
  end

  # Protected method to deposit money (internal to account only)
  def deposit(amount)
    @balance += amount
    puts "#{amount} deposited. New balance: #{@balance}"
  end
end


# Creating two bank accounts
account1 = BankAccount.new("Alice", 1000)
account2 = BankAccount.new("Bob", 500)

# Transfer money between accounts
account1.transfer_to(account2, 200)
# Output:
# 200 withdrawn. New balance: 800
# 200 deposited. New balance: 700
# Transferred 200 to Bob.

# Attempting to access protected methods directly
account1.withdraw(100) # => NoMethodError: protected method `withdraw' called for #<BankAccount:...>

account2.deposit(100) # => NoMethodError: protected method `deposit' called for #<BankAccount:...>