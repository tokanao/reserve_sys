require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { course_id: @entry.course_id, created_at: @entry.created_at, customer_id: @entry.customer_id, deleted_at: @entry.deleted_at, id: @entry.id, name: @entry.name, price: @entry.price, resource_id: @entry.resource_id, start_time: @entry.start_time, term: @entry.term, updated_at: @entry.updated_at } }
    end

    assert_redirected_to entry_url(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { course_id: @entry.course_id, created_at: @entry.created_at, customer_id: @entry.customer_id, deleted_at: @entry.deleted_at, id: @entry.id, name: @entry.name, price: @entry.price, resource_id: @entry.resource_id, start_time: @entry.start_time, term: @entry.term, updated_at: @entry.updated_at } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
