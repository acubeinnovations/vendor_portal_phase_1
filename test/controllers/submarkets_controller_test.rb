require 'test_helper'

class SubmarketsControllerTest < ActionController::TestCase
  setup do
    @submarket = submarkets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submarkets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submarket" do
    assert_difference('Submarket.count') do
      post :create, submarket: { name: @submarket.name }
    end

    assert_redirected_to submarket_path(assigns(:submarket))
  end

  test "should show submarket" do
    get :show, id: @submarket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submarket
    assert_response :success
  end

  test "should update submarket" do
    patch :update, id: @submarket, submarket: { name: @submarket.name }
    assert_redirected_to submarket_path(assigns(:submarket))
  end

  test "should destroy submarket" do
    assert_difference('Submarket.count', -1) do
      delete :destroy, id: @submarket
    end

    assert_redirected_to submarkets_path
  end
end
