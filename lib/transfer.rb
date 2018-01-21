class Transfer
  
  attr_accessor :status, :amount, :transfeted_amount
  attr_reader :sender, :receiver
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @transfeted_amount = 0 
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if @transfeted_amount > 0 
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
      @transfeted_amount = amount
    end
  end
  
end






# learn spec/transfer_spec.rb --fail-fast