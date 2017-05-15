require 'date'

class Withdrawal

  def initialize(args)
    @amount = args[:amount]
    @parsed_date = (args[:parsed_date]) || Date.parse(Time.now.inspect)
  end

  attr_reader :amount, :parsed_date

  def date
    parsed_date.strftime('%d/%m/%Y')
  end

  def debit
    return amount
  end

  def credit
    return 
  end

end
