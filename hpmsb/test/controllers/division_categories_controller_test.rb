require 'test_helper'

class DivisionCategoriesControllerTest < ActionController::TestCase
  setup do
    @division_category = division_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:division_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create division_category" do
    assert_difference('DivisionCategory.count') do
      post :create, division_category: { Division_id: @division_category.Division_id, description: @division_category.description, name: @division_category.name }
    end

    assert_redirected_to division_category_path(assigns(:division_category))
  end

  test "should show division_category" do
    get :show, id: @division_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @division_category
    assert_response :success
  end

  test "should update division_category" do
    patch :update, id: @division_category, division_category: { Division_id: @division_category.Division_id, description: @division_category.description, name: @division_category.name }
    assert_redirected_to division_category_path(assigns(:division_category))
  end

  test "should destroy division_category" do
    assert_difference('DivisionCategory.count', -1) do
      delete :destroy, id: @division_category
    end

    assert_redirected_to division_categories_path
  end
end
