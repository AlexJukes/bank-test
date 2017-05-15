describe Withdrawal do

  let(:withdrawal) {described_class.new({amount: 100, parsed_date: Date.parse('11/1/2017')})}

  it 'stores the amount of the withdrawal' do
    expect(withdrawal.amount).to eq(100)
  end

  it 'stores the date the withdrawal was made' do
    expect(withdrawal.date).to eq('11/01/2017')
  end
end
