class Transfer
  
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  
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
    amount -= amount
    (sender.balance -= amount).freeze
    (receiver.balance += amount).freeze
    self.status = "complete"
  end
  
end






# learn spec/transfer_spec.rb --fail-fast