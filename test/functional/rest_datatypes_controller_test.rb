require 'test_helper'

class RestDatatypesControllerTest < ActionController::TestCase
  setup do
    @rest_datatype = rest_datatypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_datatypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_datatype" do
    assert_difference('RestDatatype.count') do
      post :create, :rest_datatype => @rest_datatype.attributes
    end

    assert_redirected_to rest_datatype_path(assigns(:rest_datatype))
  end

  test "should show rest_datatype" do
    get :show, :id => @rest_datatype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rest_datatype.to_param
    assert_response :success
  end

  test "should update rest_datatype" do
    put :update, :id => @rest_datatype.to_param, :rest_datatype => @rest_datatype.attributes
    assert_redirected_to rest_datatype_path(assigns(:rest_datatype))
  end

  test "should destroy rest_datatype" do
    assert_difference('RestDatatype.count', -1) do
      delete :destroy, :id => @rest_datatype.to_param
    end

    assert_redirected_to rest_datatypes_path
  end
end
