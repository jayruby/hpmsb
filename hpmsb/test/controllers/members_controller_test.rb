require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { birthday: @member.birthday, college: @member.college, full_name: @member.full_name, gender: @member.gender, jogja_address: @member.jogja_address, ksb_address: @member.ksb_address, major: @member.major, member_id: @member.member_id, phone: @member.phone, pin_bb: @member.pin_bb, place_of_birth: @member.place_of_birth, sub_district: @member.sub_district }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { birthday: @member.birthday, college: @member.college, full_name: @member.full_name, gender: @member.gender, jogja_address: @member.jogja_address, ksb_address: @member.ksb_address, major: @member.major, member_id: @member.member_id, phone: @member.phone, pin_bb: @member.pin_bb, place_of_birth: @member.place_of_birth, sub_district: @member.sub_district }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
