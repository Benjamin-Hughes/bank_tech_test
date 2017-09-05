require './src/account.rb'

describe Account do

  let(:initial_deposit) { 1000 }
  let(:deposit) { 500 }
  let(:withdrawl) { 700 }
  let(:account_holder) { 'Bob' }

  subject(:account) { described_class.new(account_holder, initial_deposit) }


  it "has an initial balance" do
    expect(account.balance).to eq(initial_deposit)
  end

  it "allows the account holder to deposit money" do
    account.add_funds(deposit)
    expect(account.balance).to eq(initial_deposit + deposit)
  end

  it "allows the account holder to withdraw money" do
    account.withdraw_funds(withdrawl)
    expect(account.balance).to eq(initial_deposit - withdrawl)
  end

  it "stores a copy of the any transactions made" do
    expect{account.add_funds(deposit)}.to change{account.transaction_history.length}.by(1)
  end

  it "displays a formatted list of transactions" do
    account.add_funds(deposit)
    expect{account.print_balance}.to output("date || credit || debit || balance" + "\n" + Date.today.to_s + " || 1000 || || 1000\n").to_stdout
  end
end
