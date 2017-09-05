class BalancePrinter
  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print_balance
    print_titles
    @transaction_history.each do | item |
      return eval_item(item)
    end
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
      puts "Invalid transaction type"
    end
  end

  def print_titles
    puts "date || credit || debit || balance"
  end
end
