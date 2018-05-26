require 'test_helper'

class AuthcredentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authcredential = authcredentials(:one)
  end

  test "should get index" do
    get authcredentials_url
    assert_response :success
  end

  test "should get new" do
    get new_authcredential_url
    assert_response :success
  end

  test "should create authcredential" do
    assert_difference('Authcredential.count') do
      post authcredentials_url, params: { authcredential: { properties: @authcredential.properties, uuid: @authcredential.uuid } }
    end

    assert_redirected_to authcredential_url(Authcredential.last)
  end

  test "should show authcredential" do
    get authcredential_url(@authcredential)
    assert_response :success
  end

  test "should get edit" do
    get edit_authcredential_url(@authcredential)
    assert_response :success
  end

  test "should update authcredential" do
    patch authcredential_url(@authcredential), params: { authcredential: { properties: @authcredential.properties, uuid: @authcredential.uuid } }
    assert_redirected_to authcredential_url(@authcredential)
  end

  test "should destroy authcredential" do
    assert_difference('Authcredential.count', -1) do
      delete authcredential_url(@authcredential)
    end

    assert_redirected_to authcredentials_url
  end
end
