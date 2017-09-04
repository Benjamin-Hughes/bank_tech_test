require './src/transaction.rb'
require 'date'

describe Transaction do
  let(:date) { Date.today }
  let(:deposit) { 'deposit' }
  let(:withdrawl) { 'withdrawl' }
  let(:amount) { 500 }

  subject(:transaction) { described_class.new(date, deposit, amount) }

  it "returns the date of the transaction" do
    expect(transaction.date).to eq(Date.today)
  end
end
