require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do

  # add_message "rpc.Function" do
  #   optional :field, :type, 1
  #   optional :field, :type, 2
  #   optional :field, :type, 3
  # end

end

module Rpc
  # Function = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Function").msgclass
end
