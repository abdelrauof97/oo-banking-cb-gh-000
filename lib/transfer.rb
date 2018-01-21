class Transfer
  
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    (sender.balance -= amount).freeze
    (receiver.balance += amount).freeze
    self.status = "complete"
  end
  
end






# learn spec/transfer_spec.rb --fail-fast