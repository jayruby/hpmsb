require 'test_helper'

class AlumnisControllerTest < ActionController::TestCase
  setup do
    @alumni = alumnis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumni" do
    assert_difference('Alumni.count') do
      post :create, alumni: { address: @alumni.address, alumni_id: @alumni.alumni_id, birthday: @alumni.birthday, college: @alumni.college, email: @alumni.email, full_name: @alumni.full_name, gender: @alumni.gender, ksb_address: @alumni.ksb_address, major: @alumni.major, phone: @alumni.phone, pin_bb: @alumni.pin_bb, place_of_birth: @alumni.place_of_birth, sub_district: @alumni.sub_district }
    end

    assert_redirected_to alumni_path(assigns(:alumni))
  end

  test "should show alumni" do
    get :show, id: @alumni
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumni
    assert_response :success
  end

  test "should update alumni" do
    patch :update, id: @alumni, alumni: { address: @alumni.address, alumni_id: @alumni.alumni_id, birthday: @alumni.birthday, college: @alumni.college, email: @alumni.email, full_name: @alumni.full_name, gender: @alumni.gender, ksb_address: @alumni.ksb_address, major: @alumni.major, phone: @alumni.phone, pin_bb: @alumni.pin_bb, place_of_birth: @alumni.place_of_birth, sub_district: @alumni.sub_district }
    assert_redirected_to alumni_path(assigns(:alumni))
  end

  test "should destroy alumni" do
    assert_difference('Alumni.count', -1) do
      delete :destroy, id: @alumni
    end

    assert_redirected_to alumnis_path
  end
end
