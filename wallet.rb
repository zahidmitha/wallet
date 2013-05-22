class Wallet

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add(amount)
    @balance += amount
  end

  def pay(amount)
    if balance > 0
      @balance -= amount
    else
      raise
    end
    return 0
  end

  def no_dolla?
    if @balance > 0
      false
    else
      true
    end
  end

end