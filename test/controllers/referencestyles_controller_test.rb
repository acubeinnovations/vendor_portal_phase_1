require 'test_helper'

class ReferencestylesControllerTest < ActionController::TestCase
  setup do
    @referencestyle = referencestyles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencestyles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencestyle" do
    assert_difference('Referencestyle.count') do
      post :create, referencestyle: { name: @referencestyle.name }
    end

    assert_redirected_to referencestyle_path(assigns(:referencestyle))
  end

  test "should show referencestyle" do
    get :show, id: @referencestyle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencestyle
    assert_response :success
  end

  test "should update referencestyle" do
    patch :update, id: @referencestyle, referencestyle: { name: @referencestyle.name }
    assert_redirected_to referencestyle_path(assigns(:referencestyle))
  end

  test "should destroy referencestyle" do
    assert_difference('Referencestyle.count', -1) do
      delete :destroy, id: @referencestyle
    end

    assert_redirected_to referencestyles_path
  end
end
