require "application_system_test_case"

class SearchUsersTest < ApplicationSystemTestCase
  setup do
    @search_user = search_users(:one)
  end

  test "visiting the index" do
    visit search_users_url
    assert_selector "h1", text: "Search Users"
  end

  test "creating a Search user" do
    visit search_users_url
    click_on "New Search User"

    click_on "Create Search user"

    assert_text "Search user was successfully created"
    click_on "Back"
  end

  test "updating a Search user" do
    visit search_users_url
    click_on "Edit", match: :first

    click_on "Update Search user"

    assert_text "Search user was successfully updated"
    click_on "Back"
  end

  test "destroying a Search user" do
    visit search_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search user was successfully destroyed"
  end
end
