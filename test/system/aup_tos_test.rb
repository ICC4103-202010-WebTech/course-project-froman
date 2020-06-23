require "application_system_test_case"

class AupTosTest < ApplicationSystemTestCase
  setup do
    @aup_to = aup_tos(:one)
  end

  test "visiting the index" do
    visit aup_tos_url
    assert_selector "h1", text: "Aup Tos"
  end

  test "creating a Aup to" do
    visit aup_tos_url
    click_on "New Aup To"

    click_on "Create Aup to"

    assert_text "Aup to was successfully created"
    click_on "Back"
  end

  test "updating a Aup to" do
    visit aup_tos_url
    click_on "Edit", match: :first

    click_on "Update Aup to"

    assert_text "Aup to was successfully updated"
    click_on "Back"
  end

  test "destroying a Aup to" do
    visit aup_tos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aup to was successfully destroyed"
  end
end
