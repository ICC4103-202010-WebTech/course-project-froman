require "application_system_test_case"

class SearchOrganizationsTest < ApplicationSystemTestCase
  setup do
    @search_organization = search_organizations(:one)
  end

  test "visiting the index" do
    visit search_organizations_url
    assert_selector "h1", text: "Search Organizations"
  end

  test "creating a Search organization" do
    visit search_organizations_url
    click_on "New Search Organization"

    click_on "Create Search organization"

    assert_text "Search organization was successfully created"
    click_on "Back"
  end

  test "updating a Search organization" do
    visit search_organizations_url
    click_on "Edit", match: :first

    click_on "Update Search organization"

    assert_text "Search organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Search organization" do
    visit search_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search organization was successfully destroyed"
  end
end
