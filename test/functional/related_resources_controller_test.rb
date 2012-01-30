require 'test_helper'

class RelatedResourcesControllerTest < ActionController::TestCase
  setup do
    @related_resource = related_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:related_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create related_resource" do
    assert_difference('RelatedResource.count') do
      post :create, related_resource: @related_resource.attributes
    end

    assert_redirected_to related_resource_path(assigns(:related_resource))
  end

  test "should show related_resource" do
    get :show, id: @related_resource.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @related_resource.to_param
    assert_response :success
  end

  test "should update related_resource" do
    put :update, id: @related_resource.to_param, related_resource: @related_resource.attributes
    assert_redirected_to related_resource_path(assigns(:related_resource))
  end

  test "should destroy related_resource" do
    assert_difference('RelatedResource.count', -1) do
      delete :destroy, id: @related_resource.to_param
    end

    assert_redirected_to related_resources_path
  end
end
