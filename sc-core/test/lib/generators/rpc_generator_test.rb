require 'test_helper'
require 'generators/rpc/rpc_generator'

class RpcGeneratorTest < Rails::Generators::TestCase
  tests RpcGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
