require 'test_helper'

class SearchOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_organization = search_organizations(:one)
  end

  test "should get index" do
    get search_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_search_organization_url
    assert_response :success
  end

  test "should create search_organization" do
    assert_difference('SearchOrganization.count') do
      post search_organizations_url, params: { search_organization: {  } }
    end

    assert_redirected_to search_organization_url(SearchOrganization.last)
  end

  test "should show search_organization" do
    get search_organization_url(@search_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_organization_url(@search_organization)
    assert_response :success
  end

  test "should update search_organization" do
    patch search_organization_url(@search_organization), params: { search_organization: {  } }
    assert_redirected_to search_organization_url(@search_organization)
  end

  test "should destroy search_organization" do
    assert_difference('SearchOrganization.count', -1) do
      delete search_organization_url(@search_organization)
    end

    assert_redirected_to search_organizations_url
  end
end
