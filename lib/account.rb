require_relative 'deposit.rb'
require_relative 'withdrawal'

class Account

  attr_reader :log, :balance

  def initialize
    @log = []
    @balance = 0
  end

  def log_transaction(transaction, current_balance)
    log.push({transaction: transaction, balance: current_balance})
  end

  def deposit(amount)
    update_balance(amount)
    log_transaction(Deposit.new(amount: amount), balance)
  end

  def withdraw(amount)
    update_balance(-amount)
    log_transaction(Withdrawal.new(amount: amount), balance)
  end

  def statement_header
     "Date || Credit || Debit || Balance"
  end

  def print_statement
     puts statement_header
     log.reverse_each do |transaction|
       puts "#{transaction[:transaction].date} || #{transaction[:transaction].credit} || #{transaction[:transaction].debit} || #{transaction[:balance]}"
     end
  end

  private

  attr_writer :balance

  def update_balance(amount)
    @balance += amount
  end

end
