require './src/transaction.rb'
require 'date'
require 'pry'
class Account
  attr_reader :account_holder, :balance, :transaction_history
  def initialize(initial_deposit)
    @transaction_history = []
    @balance = 0
    @balance = add_funds(initial_deposit)
  end

  def add_funds(amount)
    transaction = Transaction.new(Date.today, 'deposit', amount)
    @transaction_history << transaction
    @balance += transaction.amount
  end

  def withdraw_funds(amount)
    transaction = Transaction.new(Date.today, 'withdrawl', amount)
    @transaction_history << transaction
    @balance -= transaction.amount
  end
end
