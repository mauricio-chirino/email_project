require "application_system_test_case"

class SegmentsTest < ApplicationSystemTestCase
  setup do
    @segment = segments(:one)
  end

  test "visiting the index" do
    visit segments_url
    assert_selector "h1", text: "Segments"
  end

  test "should create segment" do
    visit segments_url
    click_on "New segment"

    fill_in "Company", with: @segment.company_id
    fill_in "Name", with: @segment.name
    click_on "Create Segment"

    assert_text "Segment was successfully created"
    click_on "Back"
  end

  test "should update Segment" do
    visit segment_url(@segment)
    click_on "Edit this segment", match: :first

    fill_in "Company", with: @segment.company_id
    fill_in "Name", with: @segment.name
    click_on "Update Segment"

    assert_text "Segment was successfully updated"
    click_on "Back"
  end

  test "should destroy Segment" do
    visit segment_url(@segment)
    click_on "Destroy this segment", match: :first

    assert_text "Segment was successfully destroyed"
  end
end
