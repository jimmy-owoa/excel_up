require "application_system_test_case"

class BussinesToBussinessesTest < ApplicationSystemTestCase
  setup do
    @bussines_to_bussiness = bussines_to_bussinesses(:one)
  end

  test "visiting the index" do
    visit bussines_to_bussinesses_url
    assert_selector "h1", text: "Bussines To Bussinesses"
  end

  test "creating a Bussines to bussiness" do
    visit bussines_to_bussinesses_url
    click_on "New Bussines To Bussiness"

    fill_in "Inventory cash", with: @bussines_to_bussiness.inventory_cash
    fill_in "Inventory units", with: @bussines_to_bussiness.inventory_units
    fill_in "Sales by period cash", with: @bussines_to_bussiness.sales_by_period_cash
    fill_in "Sales by period units", with: @bussines_to_bussiness.sales_by_period_units
    click_on "Create Bussines to bussiness"

    assert_text "Bussines to bussiness was successfully created"
    click_on "Back"
  end

  test "updating a Bussines to bussiness" do
    visit bussines_to_bussinesses_url
    click_on "Edit", match: :first

    fill_in "Inventory cash", with: @bussines_to_bussiness.inventory_cash
    fill_in "Inventory units", with: @bussines_to_bussiness.inventory_units
    fill_in "Sales by period cash", with: @bussines_to_bussiness.sales_by_period_cash
    fill_in "Sales by period units", with: @bussines_to_bussiness.sales_by_period_units
    click_on "Update Bussines to bussiness"

    assert_text "Bussines to bussiness was successfully updated"
    click_on "Back"
  end

  test "destroying a Bussines to bussiness" do
    visit bussines_to_bussinesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bussines to bussiness was successfully destroyed"
  end
end
