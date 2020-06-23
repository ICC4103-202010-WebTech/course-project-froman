require 'test_helper'

class AupTosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aup_to = aup_tos(:one)
  end

  test "should get index" do
    get aup_tos_url
    assert_response :success
  end

  test "should get new" do
    get new_aup_to_url
    assert_response :success
  end

  test "should create aup_to" do
    assert_difference('AupTo.count') do
      post aup_tos_url, params: { aup_to: {  } }
    end

    assert_redirected_to aup_to_url(AupTo.last)
  end

  test "should show aup_to" do
    get aup_to_url(@aup_to)
    assert_response :success
  end

  test "should get edit" do
    get edit_aup_to_url(@aup_to)
    assert_response :success
  end

  test "should update aup_to" do
    patch aup_to_url(@aup_to), params: { aup_to: {  } }
    assert_redirected_to aup_to_url(@aup_to)
  end

  test "should destroy aup_to" do
    assert_difference('AupTo.count', -1) do
      delete aup_to_url(@aup_to)
    end

    assert_redirected_to aup_tos_url
  end
end
