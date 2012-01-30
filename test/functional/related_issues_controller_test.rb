require 'test_helper'

class RelatedIssuesControllerTest < ActionController::TestCase
  setup do
    @related_issue = related_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:related_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create related_issue" do
    assert_difference('RelatedIssue.count') do
      post :create, related_issue: @related_issue.attributes
    end

    assert_redirected_to related_issue_path(assigns(:related_issue))
  end

  test "should show related_issue" do
    get :show, id: @related_issue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @related_issue.to_param
    assert_response :success
  end

  test "should update related_issue" do
    put :update, id: @related_issue.to_param, related_issue: @related_issue.attributes
    assert_redirected_to related_issue_path(assigns(:related_issue))
  end

  test "should destroy related_issue" do
    assert_difference('RelatedIssue.count', -1) do
      delete :destroy, id: @related_issue.to_param
    end

    assert_redirected_to related_issues_path
  end
end
