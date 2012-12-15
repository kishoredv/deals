require 'test_helper'

class SoldoutsControllerTest < ActionController::TestCase
  setup do
    @soldout = soldouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soldouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soldout" do
    assert_difference('Soldout.count') do
      post :create, soldout: { card_number: @soldout.card_number, customer_email: @soldout.customer_email, customer_name: @soldout.customer_name, cvv: @soldout.cvv, expiry_date: @soldout.expiry_date }
    end

    assert_redirected_to soldout_path(assigns(:soldout))
  end

  test "should show soldout" do
    get :show, id: @soldout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soldout
    assert_response :success
  end

  test "should update soldout" do
    put :update, id: @soldout, soldout: { card_number: @soldout.card_number, customer_email: @soldout.customer_email, customer_name: @soldout.customer_name, cvv: @soldout.cvv, expiry_date: @soldout.expiry_date }
    assert_redirected_to soldout_path(assigns(:soldout))
  end

  test "should destroy soldout" do
    assert_difference('Soldout.count', -1) do
      delete :destroy, id: @soldout
    end

    assert_redirected_to soldouts_path
  end
end
