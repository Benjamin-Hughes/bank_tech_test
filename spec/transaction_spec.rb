require './src/transaction.rb'
require 'date'

describe Transaction do
  let(:date) { Date.today }
  let(:deposit) { 'deposit' }
  let(:withdrawl) { 'withdrawl' }
  let(:balance) { 1000 }
  let(:amount) { 500 }

  subject(:transaction) { described_class.new(date, deposit, amount, balance) }

  it "returns the date of the transaction" do
    expect(transaction.date).to eq(Date.today)
  end

  it "returns the type of the transaction" do
    expect(transaction.type).to eq(deposit)
  end

  it "returns the amount of a transaction" do
    expect(transaction.amount).to eq(amount)
  end
end
