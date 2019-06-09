require 'test_helper'

class BussinesToBussinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bussines_to_bussiness = bussines_to_bussinesses(:one)
  end

  test "should get index" do
    get bussines_to_bussinesses_url
    assert_response :success
  end

  test "should get new" do
    get new_bussines_to_bussiness_url
    assert_response :success
  end

  test "should create bussines_to_bussiness" do
    assert_difference('BussinesToBussiness.count') do
      post bussines_to_bussinesses_url, params: { bussines_to_bussiness: { inventory_cash: @bussines_to_bussiness.inventory_cash, inventory_units: @bussines_to_bussiness.inventory_units, sales_by_period_cash: @bussines_to_bussiness.sales_by_period_cash, sales_by_period_units: @bussines_to_bussiness.sales_by_period_units } }
    end

    assert_redirected_to bussines_to_bussiness_url(BussinesToBussiness.last)
  end

  test "should show bussines_to_bussiness" do
    get bussines_to_bussiness_url(@bussines_to_bussiness)
    assert_response :success
  end

  test "should get edit" do
    get edit_bussines_to_bussiness_url(@bussines_to_bussiness)
    assert_response :success
  end

  test "should update bussines_to_bussiness" do
    patch bussines_to_bussiness_url(@bussines_to_bussiness), params: { bussines_to_bussiness: { inventory_cash: @bussines_to_bussiness.inventory_cash, inventory_units: @bussines_to_bussiness.inventory_units, sales_by_period_cash: @bussines_to_bussiness.sales_by_period_cash, sales_by_period_units: @bussines_to_bussiness.sales_by_period_units } }
    assert_redirected_to bussines_to_bussiness_url(@bussines_to_bussiness)
  end

  test "should destroy bussines_to_bussiness" do
    assert_difference('BussinesToBussiness.count', -1) do
      delete bussines_to_bussiness_url(@bussines_to_bussiness)
    end

    assert_redirected_to bussines_to_bussinesses_url
  end
end
