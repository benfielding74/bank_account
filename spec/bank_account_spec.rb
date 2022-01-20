require 'bank_account'

describe BankAccount do
  describe '#deposit_money' do
    it 'will allow a customer to deposit money' do
      my_account = BankAccount.new(0)
      expect(my_account.deposit_money(10)).to eq ("You have deposited £10")
    end
  
    it 'adds to the balance when an amount is given as input' do
      my_account = BankAccount.new(0)
      my_account.deposit_money(10)
      expect(my_account.balance).to eq(10)
    end
  end

  it 'lets the customer view the current balance' do
    my_account = BankAccount.new(50)
    expect(my_account.view_balance).to eq("Your balance is currently £50")
  end

  describe '#withdraw_money' do
    it 'allows the customer to withdraw money' do
      my_account = BankAccount.new(20)
      my_account.withdraw_money(10)
      expect(my_account.balance).to eq(10)
    end

    it 'raises an error message if the withdrawal is greater than the balance' do
      my_account = BankAccount.new(10)
      expect{my_account.withdraw_money(20)}.to raise_error("You have insufficient funds")
    end

    it 'subtracts from the balance when money is withdrawn' do
      my_account = BankAccount.new(50)
      my_account.withdraw_money(25)
      expect(my_account.balance).to eq(25)
    end
  end

end