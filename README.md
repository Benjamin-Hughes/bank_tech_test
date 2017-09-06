
# README

## User Stories

- As a user
So I can keep my money safe
I want to be be able to deposit money in my account

- So I can use my money
I want to be about to withdraw money from my account

- As a user
So I can see how broke I am
I want to be able to view a bank statement

### Classes

- Account: Stores the balance and is responsible for manipulating the balance
and displaying the account history

- Customer: Stores a name and an account associated with it

- Transaction: Provides the transaction object used to record customer transactions

- BalancePrinter: Will format account information passed to if appropriately and display it

### Usage

To get started, clone the repo and run bundle to install the required gems:

```
git clone git@github.com:Benjamin-Hughes/bank_tech_test.git
bundle install
```

Next run rspec to check that everything is working:

```
bundle exec rspec
```

Now we can jump into IRB and create an account object with and owner and initial balance:

```ruby
my_account = Account.new('Ben', 5000)
```
