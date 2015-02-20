require 'test_helper'

class ProcessmastersControllerTest < ActionController::TestCase
  setup do
    @processmaster = processmasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processmasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processmaster" do
    assert_difference('Processmaster.count') do
      post :create, processmaster: { division: @processmaster.division }
    end

    assert_redirected_to processmaster_path(assigns(:processmaster))
  end

  test "should show processmaster" do
    get :show, id: @processmaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processmaster
    assert_response :success
  end

  test "should update processmaster" do
    patch :update, id: @processmaster, processmaster: { division: @processmaster.division }
    assert_redirected_to processmaster_path(assigns(:processmaster))
  end

  test "should destroy processmaster" do
    assert_difference('Processmaster.count', -1) do
      delete :destroy, id: @processmaster
    end

    assert_redirected_to processmasters_path
  end
end
