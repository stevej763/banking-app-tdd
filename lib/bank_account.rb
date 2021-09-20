class BankAccount

  def initialize
      @balance = 0
  end

  def deposit(amount)
    @balance += amount
    "You deposited £#{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    "You withdrew £#{amount}"
  end

  def view_balance
    "Your current balance is £#{@balance}"
  end
end