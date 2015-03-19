require 'test_helper'

class TrackingsheetimagesControllerTest < ActionController::TestCase
  setup do
    @trackingsheetimage = trackingsheetimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackingsheetimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackingsheetimage" do
    assert_difference('Trackingsheetimage.count') do
      post :create, trackingsheetimage: { description: @trackingsheetimage.description, image: @trackingsheetimage.image }
    end

    assert_redirected_to trackingsheetimage_path(assigns(:trackingsheetimage))
  end

  test "should show trackingsheetimage" do
    get :show, id: @trackingsheetimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trackingsheetimage
    assert_response :success
  end

  test "should update trackingsheetimage" do
    patch :update, id: @trackingsheetimage, trackingsheetimage: { description: @trackingsheetimage.description, image: @trackingsheetimage.image }
    assert_redirected_to trackingsheetimage_path(assigns(:trackingsheetimage))
  end

  test "should destroy trackingsheetimage" do
    assert_difference('Trackingsheetimage.count', -1) do
      delete :destroy, id: @trackingsheetimage
    end

    assert_redirected_to trackingsheetimages_path
  end
end
