require 'bank_account'

describe BankAccount do

  describe 'deposit' do
    it 'adds money to the customers balance' do
      amount = 10
      expect(subject.deposit(amount)).to eq("You deposited £#{amount}")
    end
  end

  describe 'withdraw' do
    it 'withdraws money from the customers balance' do
      amount = 10
      expect(subject.withdraw(amount)).to eq("You withdrew £#{amount}")
    end
  end

  describe 'view_balance' do
    context "balance is £0" do
      it 'prints the customers current balance' do 
        expect(subject.view_balance).to eq("Your current balance is £0")
      end
    end

    context "balance is £10" do
      it 'prints the customers current balance' do 
        subject.deposit(10)
        expect(subject.view_balance).to eq("Your current balance is £10")
      end
    end

    context "balance is £100 after a £10 withdrawal" do
      it 'prints the customers current balance' do 
        subject.deposit(110)
        subject.withdraw(10)
        expect(subject.view_balance).to eq("Your current balance is £100")
      end
    end
   
  end
end