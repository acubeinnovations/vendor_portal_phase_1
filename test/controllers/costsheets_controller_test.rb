require 'test_helper'

class CostsheetsControllerTest < ActionController::TestCase
  setup do
    @costsheet = costsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costsheet" do
    assert_difference('Costsheet.count') do
      post :create, costsheet: { comments: @costsheet.comments, commision: @costsheet.commision, componentsLstring: @costsheet.componentsLstring, croquisnonduty: @costsheet.croquisnonduty, designcharges: @costsheet.designcharges, duty: @costsheet.duty, firstcost: @costsheet.firstcost, freight: @costsheet.freight, insurance: @costsheet.insurance, ldp: @costsheet.ldp, misc: @costsheet.misc, qa: @costsheet.qa, retail: @costsheet.retail, screencount: @costsheet.screencount, screens: @costsheet.screens, soffs: @costsheet.soffs, testing: @costsheet.testing }
    end

    assert_redirected_to costsheet_path(assigns(:costsheet))
  end

  test "should show costsheet" do
    get :show, id: @costsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costsheet
    assert_response :success
  end

  test "should update costsheet" do
    patch :update, id: @costsheet, costsheet: { comments: @costsheet.comments, commision: @costsheet.commision, componentsLstring: @costsheet.componentsLstring, croquisnonduty: @costsheet.croquisnonduty, designcharges: @costsheet.designcharges, duty: @costsheet.duty, firstcost: @costsheet.firstcost, freight: @costsheet.freight, insurance: @costsheet.insurance, ldp: @costsheet.ldp, misc: @costsheet.misc, qa: @costsheet.qa, retail: @costsheet.retail, screencount: @costsheet.screencount, screens: @costsheet.screens, soffs: @costsheet.soffs, testing: @costsheet.testing }
    assert_redirected_to costsheet_path(assigns(:costsheet))
  end

  test "should destroy costsheet" do
    assert_difference('Costsheet.count', -1) do
      delete :destroy, id: @costsheet
    end

    assert_redirected_to costsheets_path
  end
end
