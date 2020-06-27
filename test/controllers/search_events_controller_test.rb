require 'test_helper'

class SearchEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_event = search_events(:one)
  end

  test "should get index" do
    get search_events_url
    assert_response :success
  end

  test "should get new" do
    get new_search_event_url
    assert_response :success
  end

  test "should create search_event" do
    assert_difference('SearchEvent.count') do
      post search_events_url, params: { search_event: {  } }
    end

    assert_redirected_to search_event_url(SearchEvent.last)
  end

  test "should show search_event" do
    get search_event_url(@search_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_event_url(@search_event)
    assert_response :success
  end

  test "should update search_event" do
    patch search_event_url(@search_event), params: { search_event: {  } }
    assert_redirected_to search_event_url(@search_event)
  end

  test "should destroy search_event" do
    assert_difference('SearchEvent.count', -1) do
      delete search_event_url(@search_event)
    end

    assert_redirected_to search_events_url
  end
end
