require "application_system_test_case"

class BookmarkTypesTest < ApplicationSystemTestCase
  setup do
    @bookmark_type = bookmark_types(:one)
  end

  test "visiting the index" do
    visit bookmark_types_url
    assert_selector "h1", text: "Bookmark Types"
  end

  test "creating a Bookmark type" do
    visit bookmark_types_url
    click_on "New Bookmark Type"

    fill_in "Name", with: @bookmark_type.name
    click_on "Create Bookmark type"

    assert_text "Bookmark type was successfully created"
    click_on "Back"
  end

  test "updating a Bookmark type" do
    visit bookmark_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bookmark_type.name
    click_on "Update Bookmark type"

    assert_text "Bookmark type was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmark type" do
    visit bookmark_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmark type was successfully destroyed"
  end
end
