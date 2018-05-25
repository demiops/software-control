require 'grpc'
require 'app/proto/#{class_name}_pb'

module Rpc
  module #{class_name}
    class Service
   
      include GRPC::GenericService
      
      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'rpc.#{class_name}'

      # rpc :Function, Request, Response
      # rpc :Function, Request, stream(Response)
      # rpc :Function, stream(Request), Response
      # rpc :Function, stream(Request), stream(Response)
        
    end
    
    Stub = Service.rpc_stub_class
  end
end
