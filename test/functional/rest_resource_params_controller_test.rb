require 'test_helper'

class RestResourceParamsControllerTest < ActionController::TestCase
  setup do
    @rest_resource_param = rest_resource_params(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_resource_params)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_resource_param" do
    assert_difference('RestResourceParam.count') do
      post :create, rest_resource_param: @rest_resource_param.attributes
    end

    assert_redirected_to rest_resource_param_path(assigns(:rest_resource_param))
  end

  test "should show rest_resource_param" do
    get :show, id: @rest_resource_param.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest_resource_param.to_param
    assert_response :success
  end

  test "should update rest_resource_param" do
    put :update, id: @rest_resource_param.to_param, rest_resource_param: @rest_resource_param.attributes
    assert_redirected_to rest_resource_param_path(assigns(:rest_resource_param))
  end

  test "should destroy rest_resource_param" do
    assert_difference('RestResourceParam.count', -1) do
      delete :destroy, id: @rest_resource_param.to_param
    end

    assert_redirected_to rest_resource_params_path
  end
end
