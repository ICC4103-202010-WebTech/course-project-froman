require 'test_helper'

class SearchUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_user = search_users(:one)
  end

  test "should get index" do
    get search_users_url
    assert_response :success
  end

  test "should get new" do
    get new_search_user_url
    assert_response :success
  end

  test "should create search_user" do
    assert_difference('SearchUser.count') do
      post search_users_url, params: { search_user: {  } }
    end

    assert_redirected_to search_user_url(SearchUser.last)
  end

  test "should show search_user" do
    get search_user_url(@search_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_user_url(@search_user)
    assert_response :success
  end

  test "should update search_user" do
    patch search_user_url(@search_user), params: { search_user: {  } }
    assert_redirected_to search_user_url(@search_user)
  end

  test "should destroy search_user" do
    assert_difference('SearchUser.count', -1) do
      delete search_user_url(@search_user)
    end

    assert_redirected_to search_users_url
  end
end
