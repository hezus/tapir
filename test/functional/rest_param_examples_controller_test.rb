require 'test_helper'

class RestParamExamplesControllerTest < ActionController::TestCase
  setup do
    @rest_param_example = rest_param_examples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_param_examples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_param_example" do
    assert_difference('RestParamExample.count') do
      post :create, :rest_param_example => @rest_param_example.attributes
    end

    assert_redirected_to rest_param_example_path(assigns(:rest_param_example))
  end

  test "should show rest_param_example" do
    get :show, :id => @rest_param_example.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rest_param_example.to_param
    assert_response :success
  end

  test "should update rest_param_example" do
    put :update, :id => @rest_param_example.to_param, :rest_param_example => @rest_param_example.attributes
    assert_redirected_to rest_param_example_path(assigns(:rest_param_example))
  end

  test "should destroy rest_param_example" do
    assert_difference('RestParamExample.count', -1) do
      delete :destroy, :id => @rest_param_example.to_param
    end

    assert_redirected_to rest_param_examples_path
  end
end
