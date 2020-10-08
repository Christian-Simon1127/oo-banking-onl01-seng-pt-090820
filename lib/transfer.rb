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
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else 
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
      true
    end
  end 
  
  def reverse_transfer
    if @status == "complete"
      receiver.balance -= @amount
      sender.balance += @amount
      @status = "complete"
    end
  end 
  
  
end
