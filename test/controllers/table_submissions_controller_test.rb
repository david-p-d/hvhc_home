require 'test_helper'

class TableSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_submission = table_submissions(:one)
  end

  test "should get index" do
    get table_submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_table_submission_url
    assert_response :success
  end

  test "should create table_submission" do
    assert_difference('TableSubmission.count') do
      post table_submissions_url, params: { table_submission: {  } }
    end

    assert_redirected_to table_submission_url(TableSubmission.last)
  end

  test "should show table_submission" do
    get table_submission_url(@table_submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_submission_url(@table_submission)
    assert_response :success
  end

  test "should update table_submission" do
    patch table_submission_url(@table_submission), params: { table_submission: {  } }
    assert_redirected_to table_submission_url(@table_submission)
  end

  test "should destroy table_submission" do
    assert_difference('TableSubmission.count', -1) do
      delete table_submission_url(@table_submission)
    end

    assert_redirected_to table_submissions_url
  end
end
