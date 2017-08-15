class Bank_account
@@interest_rate = 1.5
@@accounts = []

def self.create
  new_bankaccount = Bank_account.new
  @@accounts << new_bankaccount
  return new_bankaccount
end

def self.total_funds
  sum = 0
  @@accounts.each {|value|
    sum += value.balance
  }
  return sum
end

def self.interest_time
  @@accounts.each { |value|
 value.balance = value.balance * @@interest_rate
  }
end

def initialize
@balance = 0
end


def balance
  @balance
end

def balance=(account_balance)
  @balance = account_balance
end

def deposit(num)
@balance += num
end

def withdraw(num)
  @balance -= num
end

end

my_account = Bank_account.create
puts my_account.inspect
your_account = Bank_account.create
puts your_account
my_account.deposit(2000)
puts my_account.balance
your_account.deposit(500)
puts your_account.balance
puts Bank_account.total_funds
Bank_account.interest_time
puts my_account.balance
puts your_account.balance
puts Bank_account.total_funds
my_account.withdraw(500)
puts my_account.balance
puts Bank_account.total_funds
