require 'test_helper'

class TrackingsheetsControllerTest < ActionController::TestCase
  setup do
    @trackingsheet = trackingsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackingsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackingsheet" do
    assert_difference('Trackingsheet.count') do
      post :create, trackingsheet: { images: @trackingsheet.images }
    end

    assert_redirected_to trackingsheet_path(assigns(:trackingsheet))
  end

  test "should show trackingsheet" do
    get :show, id: @trackingsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trackingsheet
    assert_response :success
  end

  test "should update trackingsheet" do
    patch :update, id: @trackingsheet, trackingsheet: { images: @trackingsheet.images }
    assert_redirected_to trackingsheet_path(assigns(:trackingsheet))
  end

  test "should destroy trackingsheet" do
    assert_difference('Trackingsheet.count', -1) do
      delete :destroy, id: @trackingsheet
    end

    assert_redirected_to trackingsheets_path
  end
end
