class Transfer
  
  attr_accessor :status, :amount, :transfered_amount
  attr_reader :sender, :receiver
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @transfered_amount = 0 
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if @transfered_amount == 0 && self.valid?
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
      @transfered_amount = amount
    end
  end
  
  def 
  
end






# learn spec/transfer_spec.rb --fail-fast





