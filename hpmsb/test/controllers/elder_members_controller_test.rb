require 'test_helper'

class ElderMembersControllerTest < ActionController::TestCase
  setup do
    @elder_member = elder_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elder_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elder_member" do
    assert_difference('ElderMember.count') do
      post :create, elder_member: { birthday: @elder_member.birthday, elder_member_id: @elder_member.elder_member_id, experience: @elder_member.experience, jogja_address: @elder_member.jogja_address, ksb_address: @elder_member.ksb_address, name: @elder_member.name, place_of_birth: @elder_member.place_of_birth, profession: @elder_member.profession, sub_district: @elder_member.sub_district }
    end

    assert_redirected_to elder_member_path(assigns(:elder_member))
  end

  test "should show elder_member" do
    get :show, id: @elder_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elder_member
    assert_response :success
  end

  test "should update elder_member" do
    patch :update, id: @elder_member, elder_member: { birthday: @elder_member.birthday, elder_member_id: @elder_member.elder_member_id, experience: @elder_member.experience, jogja_address: @elder_member.jogja_address, ksb_address: @elder_member.ksb_address, name: @elder_member.name, place_of_birth: @elder_member.place_of_birth, profession: @elder_member.profession, sub_district: @elder_member.sub_district }
    assert_redirected_to elder_member_path(assigns(:elder_member))
  end

  test "should destroy elder_member" do
    assert_difference('ElderMember.count', -1) do
      delete :destroy, id: @elder_member
    end

    assert_redirected_to elder_members_path
  end
end
