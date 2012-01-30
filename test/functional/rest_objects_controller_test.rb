require 'test_helper'

class RestObjectsControllerTest < ActionController::TestCase
  setup do
    @rest_object = rest_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_object" do
    assert_difference('RestObject.count') do
      post :create, rest_object: @rest_object.attributes
    end

    assert_redirected_to rest_object_path(assigns(:rest_object))
  end

  test "should show rest_object" do
    get :show, id: @rest_object.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest_object.to_param
    assert_response :success
  end

  test "should update rest_object" do
    put :update, id: @rest_object.to_param, rest_object: @rest_object.attributes
    assert_redirected_to rest_object_path(assigns(:rest_object))
  end

  test "should destroy rest_object" do
    assert_difference('RestObject.count', -1) do
      delete :destroy, id: @rest_object.to_param
    end

    assert_redirected_to rest_objects_path
  end
end
