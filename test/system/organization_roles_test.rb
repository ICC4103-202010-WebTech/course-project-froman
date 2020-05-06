require "application_system_test_case"

class OrganizationRolesTest < ApplicationSystemTestCase
  setup do
    @organization_role = organization_roles(:one)
  end

  test "visiting the index" do
    visit organization_roles_url
    assert_selector "h1", text: "Organization Roles"
  end

  test "creating a Organization role" do
    visit organization_roles_url
    click_on "New Organization Role"

    click_on "Create Organization role"

    assert_text "Organization role was successfully created"
    click_on "Back"
  end

  test "updating a Organization role" do
    visit organization_roles_url
    click_on "Edit", match: :first

    click_on "Update Organization role"

    assert_text "Organization role was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization role" do
    visit organization_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization role was successfully destroyed"
  end
end
