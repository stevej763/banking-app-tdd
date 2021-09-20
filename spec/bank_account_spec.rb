require 'bank_account'

describe BankAccount do

  describe 'deposit' do
    it 'adds money to the customers balance' do
      amount = 10
      expect(BankAccount.new.deposit(amount)).to eq("You deposited £#{amount}")
    end
  end
end