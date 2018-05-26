require 'test_helper'

class CloudcredentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloudcredential = cloudcredentials(:one)
  end

  test "should get index" do
    get cloudcredentials_url
    assert_response :success
  end

  test "should get new" do
    get new_cloudcredential_url
    assert_response :success
  end

  test "should create cloudcredential" do
    assert_difference('Cloudcredential.count') do
      post cloudcredentials_url, params: { cloudcredential: { properties: @cloudcredential.properties, uuid: @cloudcredential.uuid } }
    end

    assert_redirected_to cloudcredential_url(Cloudcredential.last)
  end

  test "should show cloudcredential" do
    get cloudcredential_url(@cloudcredential)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloudcredential_url(@cloudcredential)
    assert_response :success
  end

  test "should update cloudcredential" do
    patch cloudcredential_url(@cloudcredential), params: { cloudcredential: { properties: @cloudcredential.properties, uuid: @cloudcredential.uuid } }
    assert_redirected_to cloudcredential_url(@cloudcredential)
  end

  test "should destroy cloudcredential" do
    assert_difference('Cloudcredential.count', -1) do
      delete cloudcredential_url(@cloudcredential)
    end

    assert_redirected_to cloudcredentials_url
  end
end
