class BankAccount

  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit_money
    puts "How much would you like to deposit?"
    deposit = gets.chomp
    @balance += deposit.to_i
    "You have deposited £#{deposit}"
  end

  def withdraw_money(withdrawal)
    fail "You have insufficient funds" unless @balance > withdrawal
    "You have withdrawn £#{withdrawal}"
    @balance -= withdrawal
  end

  def view_balance
    "Your balance is currently £#{@balance}"
  end

end


