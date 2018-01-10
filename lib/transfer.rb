class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if @sender.valid? && @status == "pending"
      @receiver.balance = @receiver.balance + @amount
      @sender.balance = @sender.balance - @amount
      @status = "completed"
    elsif @sender.valid? == false
      "Transaction rejected. Please check your account balance."
    end
      
        
      
  end
end
