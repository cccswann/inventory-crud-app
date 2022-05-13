require "application_system_test_case"

class InventoryLevelsTest < ApplicationSystemTestCase
  setup do
    @inventory_level = inventory_levels(:one)
  end

  test "visiting the index" do
    visit inventory_levels_url
    assert_selector "h1", text: "Inventory Levels"
  end

  test "creating a Inventory level" do
    visit inventory_levels_url
    click_on "New Inventory Level"

    fill_in "Available", with: @inventory_level.available
    click_on "Create Inventory level"

    assert_text "Inventory level was successfully created"
    click_on "Back"
  end

  test "updating a Inventory level" do
    visit inventory_levels_url
    click_on "Edit", match: :first

    fill_in "Available", with: @inventory_level.available
    click_on "Update Inventory level"

    assert_text "Inventory level was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory level" do
    visit inventory_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory level was successfully destroyed"
  end
end
