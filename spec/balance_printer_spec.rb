require './src/balance_printer.rb'
require 'date'


describe BalancePrinter do

  let(:withdrawl_mock) { [ instance_double("Transaction", :date => Date.today.to_s,
    :type => 'withdrawl', :amount => 500, :current_balance => 1000 ) ] }
  let(:deposit_mock) { [ instance_double("Transaction", :date => Date.today.to_s,
    :type => 'deposit', :amount => 500, :current_balance => 1500 ) ] }
  let(:invalid_mock) { [ instance_double("Transaction", :date => Date.today.to_s,
      :type => 'foobar', :amount => 500, :current_balance => 1500 ) ] }

      subject(:withdrawl_printer) { described_class.new(withdrawl_mock) }
      subject(:deposit_printer) { described_class.new(deposit_mock) }
      subject(:invalid_printer) { described_class.new(invalid_mock) }

  it "returns the correct output when passed a deposit" do
    expect{deposit_printer.print_balance}.to output("date || credit || debit || balance" + "\n" + Date.today.to_s + " || 500 || || 1500\n").to_stdout
  end

  it "returns the correct output when passed a withdrawl" do
    expect{withdrawl_printer.print_balance}.to output("date || credit || debit || balance" + "\n" + Date.today.to_s + " || || 500 || 1000\n").to_stdout
  end

  it "throws an error when given an incorrect transaction type" do
    expect{invalid_printer.print_balance}.to output("date || credit || debit || balance\nInvalid transaction type\n").to_stdout
  end
end
