require './src/transaction.rb'
require './src/balance_printer.rb'
require 'date'
require 'pry'

class Account
  attr_reader :account_holder, :balance, :transaction_history
  def initialize(account_holder, initial_deposit=0)
    @account_holder = account_holder
    @transaction_history = []
    @balance = 0
    @balance = add_funds(initial_deposit)
  end

  def add_funds(amount)
    transaction = Transaction.new(Date.today, 'deposit', amount, balance)
    transaction_history << transaction
    @balance += transaction.amount
  end

  def withdraw_funds(amount)
    transaction = Transaction.new(Date.today, 'withdrawl', amount, balance)
    transaction_history << transaction
    @balance -= transaction.amount
  end

  def print_balance
    balance_printer = BalancePrinter.new(transaction_history)
    balance_printer.print_balance
  end
end
