require 'test_helper'

class RestResourcesControllerTest < ActionController::TestCase
  setup do
    @rest_resource = rest_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_resource" do
    assert_difference('RestResource.count') do
      post :create, rest_resource: @rest_resource.attributes
    end

    assert_redirected_to rest_resource_path(assigns(:rest_resource))
  end

  test "should show rest_resource" do
    get :show, id: @rest_resource.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest_resource.to_param
    assert_response :success
  end

  test "should update rest_resource" do
    put :update, id: @rest_resource.to_param, rest_resource: @rest_resource.attributes
    assert_redirected_to rest_resource_path(assigns(:rest_resource))
  end

  test "should destroy rest_resource" do
    assert_difference('RestResource.count', -1) do
      delete :destroy, id: @rest_resource.to_param
    end

    assert_redirected_to rest_resources_path
  end
end
