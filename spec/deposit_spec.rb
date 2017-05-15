describe Deposit do

  let(:deposit) {described_class.new({amount: 100, parsed_date: Date.parse('10/1/2017')})}

  it 'stores the amount of money deposited' do
    expect(deposit.amount).to eq(100)
  end

  it 'stores the date the deposit was made' do
    expect(deposit.date). to eq('10/01/2017')
  end

end
