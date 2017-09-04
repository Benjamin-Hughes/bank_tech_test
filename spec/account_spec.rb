require './src/account.rb'

describe Account do

  let(:initial_deposit) { 1000 }
  let(:deposit) { 500 }
  let(:withdrawl) { 700 }

  subject(:account) { described_class.new(initial_deposit) }

  it "has an initial balance" do
    expect(account.balance).to eq(initial_deposit)
  end

  context "depositing money" do
    it "allows the account holder to deposit money" do
      account.add_funds(deposit)
      expect(account.balance).to eq(initial_deposit + deposit)
    end
  end

  it "stores a copy of the any transactions made" do
    expect{account.add_funds(deposit)}.to change{account.transaction_history.length}.by(1)
  end

  # whoops, wrong place!
  # it "stores the date that the deposit was made" do
  #   account.add_funds(deposit)
  #   expect(account.transaction_history[-1].date).to eq(Date.today)
  # end
end
