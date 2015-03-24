require 'test_helper'

class TrackingsheetdocumentsControllerTest < ActionController::TestCase
  setup do
    @trackingsheetdocument = trackingsheetdocuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackingsheetdocuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackingsheetdocument" do
    assert_difference('Trackingsheetdocument.count') do
      post :create, trackingsheetdocument: { description: @trackingsheetdocument.description, document: @trackingsheetdocument.document }
    end

    assert_redirected_to trackingsheetdocument_path(assigns(:trackingsheetdocument))
  end

  test "should show trackingsheetdocument" do
    get :show, id: @trackingsheetdocument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trackingsheetdocument
    assert_response :success
  end

  test "should update trackingsheetdocument" do
    patch :update, id: @trackingsheetdocument, trackingsheetdocument: { description: @trackingsheetdocument.description, document: @trackingsheetdocument.document }
    assert_redirected_to trackingsheetdocument_path(assigns(:trackingsheetdocument))
  end

  test "should destroy trackingsheetdocument" do
    assert_difference('Trackingsheetdocument.count', -1) do
      delete :destroy, id: @trackingsheetdocument
    end

    assert_redirected_to trackingsheetdocuments_path
  end
end
