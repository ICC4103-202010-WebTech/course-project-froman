require 'test_helper'

class OrganizationRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_role = organization_roles(:one)
  end

  test "should get index" do
    get organization_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_role_url
    assert_response :success
  end

  test "should create organization_role" do
    assert_difference('OrganizationRole.count') do
      post organization_roles_url, params: { organization_role: {  } }
    end

    assert_redirected_to organization_role_url(OrganizationRole.last)
  end

  test "should show organization_role" do
    get organization_role_url(@organization_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_role_url(@organization_role)
    assert_response :success
  end

  test "should update organization_role" do
    patch organization_role_url(@organization_role), params: { organization_role: {  } }
    assert_redirected_to organization_role_url(@organization_role)
  end

  test "should destroy organization_role" do
    assert_difference('OrganizationRole.count', -1) do
      delete organization_role_url(@organization_role)
    end

    assert_redirected_to organization_roles_url
  end
end
