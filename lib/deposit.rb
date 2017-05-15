require 'date'

class Deposit

  def initialize(args)
    @amount = args[:amount]
    @parsed_date = (args[:parsed_date]) || Date.parse(Time.now.inspect)
  end

  attr_reader :amount, :parsed_date

  def date
    parsed_date.strftime('%d/%m/%Y')
  end

  def credit
    return amount
  end

  def debit
    return 
  end


end
