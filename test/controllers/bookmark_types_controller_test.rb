require "test_helper"

class BookmarkTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmark_type = bookmark_types(:one)
  end

  test "should get index" do
    get bookmark_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmark_type_url
    assert_response :success
  end

  test "should create bookmark_type" do
    assert_difference('BookmarkType.count') do
      post bookmark_types_url, params: { bookmark_type: { name: @bookmark_type.name } }
    end

    assert_redirected_to bookmark_type_url(BookmarkType.last)
  end

  test "should show bookmark_type" do
    get bookmark_type_url(@bookmark_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmark_type_url(@bookmark_type)
    assert_response :success
  end

  test "should update bookmark_type" do
    patch bookmark_type_url(@bookmark_type), params: { bookmark_type: { name: @bookmark_type.name } }
    assert_redirected_to bookmark_type_url(@bookmark_type)
  end

  test "should destroy bookmark_type" do
    assert_difference('BookmarkType.count', -1) do
      delete bookmark_type_url(@bookmark_type)
    end

    assert_redirected_to bookmark_types_url
  end
end
