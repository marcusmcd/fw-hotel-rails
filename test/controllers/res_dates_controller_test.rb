require 'test_helper'

class ResDatesControllerTest < ActionController::TestCase
  setup do
    @res_date = res_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:res_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create res_date" do
    assert_difference('ResDate.count') do
      post :create, res_date: { res_date: @res_date.res_date }
    end

    assert_redirected_to res_date_path(assigns(:res_date))
  end

  test "should show res_date" do
    get :show, id: @res_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @res_date
    assert_response :success
  end

  test "should update res_date" do
    patch :update, id: @res_date, res_date: { res_date: @res_date.res_date }
    assert_redirected_to res_date_path(assigns(:res_date))
  end

  test "should destroy res_date" do
    assert_difference('ResDate.count', -1) do
      delete :destroy, id: @res_date
    end

    assert_redirected_to res_dates_path
  end
end
