require 'test_helper'

class DivisionsControllerTest < ActionController::TestCase
  setup do
    @division = divisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create division" do
    assert_difference('Division.count') do
      post :create, division: { cost: @division.cost, division_id: @division.division_id, end_date: @division.end_date, program: @division.program, start_date: @division.start_date, status: @division.status }
    end

    assert_redirected_to division_path(assigns(:division))
  end

  test "should show division" do
    get :show, id: @division
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @division
    assert_response :success
  end

  test "should update division" do
    patch :update, id: @division, division: { cost: @division.cost, division_id: @division.division_id, end_date: @division.end_date, program: @division.program, start_date: @division.start_date, status: @division.status }
    assert_redirected_to division_path(assigns(:division))
  end

  test "should destroy division" do
    assert_difference('Division.count', -1) do
      delete :destroy, id: @division
    end

    assert_redirected_to divisions_path
  end
end
