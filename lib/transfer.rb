class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount) 
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end    
  end 
  
  def execute_transaction
    if sender.balance < @amount || @status == "complete" || !valid?
      "Transaction rejected. Please check your account balance."
    else 
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
      true
    end
  end 
  
  
end
