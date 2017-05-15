describe Account do

  let(:account) {described_class.new}
  let(:deposit) {double:deposit, amount: 100, date: Date.parse('10-01-2017')}

  describe '#initialize' do

    it 'should initialise with a balance of 0 and no log history' do
      expect(account.balance).to eq(0)
      expect(account.log.empty?).to be(true)
    end
  end


  before do
      allow(deposit).to receive(:type).and_return(:deposit)
  end

  describe '#log_transaction' do

    it 'stores the transaction' do
      account.log_transaction(deposit, account.balance)
      expect(account.log).to include({transaction: deposit, balance: 0})
    end

  end

  describe '#deposit' do

    it 'should correctly update the balance with new money deposited' do
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

  describe '#withdrawal' do

    it 'should correctly update the balance without the money withdrawn' do
      account.withdraw(100)
      expect(account.balance).to eq(-100)
    end
  end

  describe '#print_statement' do
    it 'should print the log of transactions' do
      account.deposit(200)
      account.withdraw(100)
      account.withdraw(50)
      expect(account.print_statement).to eq("")
    end
  end
end
