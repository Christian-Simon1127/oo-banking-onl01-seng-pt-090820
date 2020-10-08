class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount) 
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?(acct1, acct2)
    if acct1.valid? && acct2.valid?
      true 
    else 
      false 
    end    
  end 
  
  def execute_transaction(acct1, acct2)
    
  end 
  
  
end
