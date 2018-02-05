require 'test_helper'

class WorkEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_entry = work_entries(:one)
  end

  test "should get index" do
    get work_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_work_entry_url
    assert_response :success
  end

  test "should create work_entry" do
    assert_difference('WorkEntry.count') do
      post work_entries_url, params: { work_entry: { hours: @work_entry.hours, issue_id: @work_entry.issue_id, user_id: @work_entry.user_id } }
    end

    assert_redirected_to work_entry_url(WorkEntry.last)
  end

  test "should show work_entry" do
    get work_entry_url(@work_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_entry_url(@work_entry)
    assert_response :success
  end

  test "should update work_entry" do
    patch work_entry_url(@work_entry), params: { work_entry: { hours: @work_entry.hours, issue_id: @work_entry.issue_id, user_id: @work_entry.user_id } }
    assert_redirected_to work_entry_url(@work_entry)
  end

  test "should destroy work_entry" do
    assert_difference('WorkEntry.count', -1) do
      delete work_entry_url(@work_entry)
    end

    assert_redirected_to work_entries_url
  end
end
