class #{class_name}Controller < Gruf::Controllers::Base
  bind ::Rpc::#{class_name}::Service
  
  def initialize(*args)

    super
  end
end
