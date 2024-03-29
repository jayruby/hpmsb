require 'test_helper'

class GuestsControllerTest < ActionController::TestCase
  setup do
    @guest = guests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest" do
    assert_difference('Guest.count') do
      post :create, guest: { address: @guest.address, cek_in: @guest.cek_in, cek_out: @guest.cek_out, full_name: @guest.full_name, guest_id: @guest.guest_id, necessary: @guest.necessary, number: @guest.number, price: @guest.price }
    end

    assert_redirected_to guest_path(assigns(:guest))
  end

  test "should show guest" do
    get :show, id: @guest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest
    assert_response :success
  end

  test "should update guest" do
    patch :update, id: @guest, guest: { address: @guest.address, cek_in: @guest.cek_in, cek_out: @guest.cek_out, full_name: @guest.full_name, guest_id: @guest.guest_id, necessary: @guest.necessary, number: @guest.number, price: @guest.price }
    assert_redirected_to guest_path(assigns(:guest))
  end

  test "should destroy guest" do
    assert_difference('Guest.count', -1) do
      delete :destroy, id: @guest
    end

    assert_redirected_to guests_path
  end
end
