require './wallet'
require 'spec_helper'

describe Wallet do

  let(:wallet) {Wallet.new}

  describe '.new' do
    it 'has an initial balance of zero' do
      wallet.balance.should eq 0
    end
  end

  # describe '#balance' do
  #   context 'given wallet currently exists' do
  #     it 'has a current balance' do
  #       wallet = Wallet.new
  #       wallet.balance.should eq @balance

  #     end
  #   end
  # end

  describe '#add' do
    it 'adds the right amount to balance' do
      wallet.add(10)
      wallet.balance.should eq 10
    end
  end

  describe '#pay' do

    it 'deducts the right amount from the balance' do
        wallet.add(10)
        wallet.pay(10)
        wallet.balance.should eq 0
    end

    it 'throws error when amount cannot be deducted' do
      expect {wallet.pay(10)}.to raise_error
    end
  end

  describe '#no_dolla?' do
    it'returns true if the balance is less than zero' do
      wallet.no_dolla?.should be_true
    end

    it'returns false if the balance is more than zero' do
      wallet.add(10)
      wallet.no_dolla?.should be_false
    end

  end

end