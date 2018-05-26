require 'test_helper'

class AuthmethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authmethod = authmethods(:one)
  end

  test "should get index" do
    get authmethods_url
    assert_response :success
  end

  test "should get new" do
    get new_authmethod_url
    assert_response :success
  end

  test "should create authmethod" do
    assert_difference('Authmethod.count') do
      post authmethods_url, params: { authmethod: { endpoint: @authmethod.endpoint, properties: @authmethod.properties, uuid: @authmethod.uuid } }
    end

    assert_redirected_to authmethod_url(Authmethod.last)
  end

  test "should show authmethod" do
    get authmethod_url(@authmethod)
    assert_response :success
  end

  test "should get edit" do
    get edit_authmethod_url(@authmethod)
    assert_response :success
  end

  test "should update authmethod" do
    patch authmethod_url(@authmethod), params: { authmethod: { endpoint: @authmethod.endpoint, properties: @authmethod.properties, uuid: @authmethod.uuid } }
    assert_redirected_to authmethod_url(@authmethod)
  end

  test "should destroy authmethod" do
    assert_difference('Authmethod.count', -1) do
      delete authmethod_url(@authmethod)
    end

    assert_redirected_to authmethods_url
  end
end
