class BankAccount
attr_reader :balance, :status, :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
   @balance = @balance + amount
  end
  
  def display_balance
    @balance 
  end
  
  def valid?
   @status == "open" && @balance > 0 
 end
end
