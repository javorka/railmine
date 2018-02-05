require 'test_helper'

class IssueCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue_comment = issue_comments(:one)
  end

  test "should get index" do
    get issue_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_issue_comment_url
    assert_response :success
  end

  test "should create issue_comment" do
    assert_difference('IssueComment.count') do
      post issue_comments_url, params: { issue_comment: { comment: @issue_comment.comment, issue_id: @issue_comment.issue_id, user_id: @issue_comment.user_id } }
    end

    assert_redirected_to issue_comment_url(IssueComment.last)
  end

  test "should show issue_comment" do
    get issue_comment_url(@issue_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_issue_comment_url(@issue_comment)
    assert_response :success
  end

  test "should update issue_comment" do
    patch issue_comment_url(@issue_comment), params: { issue_comment: { comment: @issue_comment.comment, issue_id: @issue_comment.issue_id, user_id: @issue_comment.user_id } }
    assert_redirected_to issue_comment_url(@issue_comment)
  end

  test "should destroy issue_comment" do
    assert_difference('IssueComment.count', -1) do
      delete issue_comment_url(@issue_comment)
    end

    assert_redirected_to issue_comments_url
  end
end
