class RpcGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_rpc_controller_file
    create_file "app/rpc/#{file_name.pluralize}_controller.rb", <<-FILE
class #{class_name.pluralize}Controller < Gruf::Controllers::Base
  bind ::Rpc::#{class_name.pluralize}::Service
  
  def initialize(*args)

    super
  end
end
    FILE
  end
  
  def create_rpc_object_file
    create_file "app/rpc/app/proto/#{file_name.pluralize.capitalize}_pb.rb", <<-FILE
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
    FILE
  end

  def create_object_proto_file
    create_file "app/proto/#{file_name.pluralize.capitalize}.proto", <<-FILE
syntax = "proto3";

package rpc;

service #{class_name.pluralize} {

  // rpc Function(Request) returns (Response) {}

}

message #{class_name} {

  // type name = 1;
  // type name = 2;
  // type name = 3;
  // type name = 4;

}
    FILE
  end

  def create_object_services_pb_file 
    create_file "app/rpc/app/proto/#{file_name.pluralize.capitalize}_services_pb.rb", <<-FILE
require 'grpc'
require 'app/proto/#{class_name.pluralize}_pb'

module Rpc
  module #{class_name.pluralize}
    class Service
   
      include GRPC::GenericService
      
      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'rpc.#{class_name.pluralize}'

      # rpc :Function, Request, Response
      # rpc :Function, Request, stream(Response)
      # rpc :Function, stream(Request), Response
      # rpc :Function, stream(Request), stream(Response)
        
    end
    
    Stub = Service.rpc_stub_class
  end
end

    FILE
  end

end
