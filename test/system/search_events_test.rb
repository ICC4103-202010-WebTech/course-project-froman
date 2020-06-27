require "application_system_test_case"

class SearchEventsTest < ApplicationSystemTestCase
  setup do
    @search_event = search_events(:one)
  end

  test "visiting the index" do
    visit search_events_url
    assert_selector "h1", text: "Search Events"
  end

  test "creating a Search event" do
    visit search_events_url
    click_on "New Search Event"

    click_on "Create Search event"

    assert_text "Search event was successfully created"
    click_on "Back"
  end

  test "updating a Search event" do
    visit search_events_url
    click_on "Edit", match: :first

    click_on "Update Search event"

    assert_text "Search event was successfully updated"
    click_on "Back"
  end

  test "destroying a Search event" do
    visit search_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search event was successfully destroyed"
  end
end
