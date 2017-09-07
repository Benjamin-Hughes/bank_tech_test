require './spec/factories.rb'
require './src/balance_printer.rb'
require 'date'


describe BalancePrinter do
include_examples "balance printer"

  it "returns the correct output when passed a deposit" do
    expect{deposit_printer.print_balance}.to output("date || credit || debit || balance" + "\n" + Date.today.to_s + " || 500 || || 1500\n").to_stdout
  end

  it "returns the correct output when passed a withdrawl" do
    expect{withdrawl_printer.print_balance}.to output("date || credit || debit || balance" + "\n" + Date.today.to_s + " || || 500 || 1500\n").to_stdout
  end

  it "throws an error when given an incorrect transaction type" do
    expect{invalid_printer.print_balance}.to output("date || credit || debit || balance\nInvalid transaction type\n").to_stdout
  end
end
