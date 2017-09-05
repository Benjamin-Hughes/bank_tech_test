class BalancePrinter
  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print_balance
    puts "date || credit || debit || balance"
    @transaction_history.each do | item |
      break if eval_item(item) == false
    end
      true
  end

  def print_deposit(item)
    puts "#{item.date} || #{item.amount} || || #{item.current_balance}"
  end

  def print_withdrawl(item)
      puts "#{item.date} || || #{item.amount} || #{item.current_balance}"
  end

  def eval_item(item)
    if item.type == 'deposit'
      print_deposit(item)
    elsif item.type == 'withdrawl'
      print_withdrawl(item)
    else
      puts "Something went wrong!"
      return false
    end
  end
end
