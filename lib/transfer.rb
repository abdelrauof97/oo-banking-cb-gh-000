class Transfer
  
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender,receiver,amount)
    @status = "pending"
  end
  
end






# learn spec/transfer_spec.rb --fail-fast