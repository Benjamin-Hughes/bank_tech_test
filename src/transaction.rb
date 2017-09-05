require 'date'
require 'pry'
class Transaction
  attr_reader :date, :type, :amount, :current_balance
  def initialize(date, type, amount, balance)
    @date   = date
    @type   = type
    @amount = amount
    @current_balance = balance + amount
  end
end
