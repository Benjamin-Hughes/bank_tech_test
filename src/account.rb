class Account
  attr_reader :account_holder, :balance
  def initialize(initial_deposit)
    @balance = initial_deposit
  end

  def add_funds(amount)
    @balance += amount
  end
end
