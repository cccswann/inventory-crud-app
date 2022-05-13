require "test_helper"

class InventoryLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_level = inventory_levels(:one)
  end

  test "should get index" do
    get inventory_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_level_url
    assert_response :success
  end

  test "should create inventory_level" do
    assert_difference('InventoryLevel.count') do
      post inventory_levels_url, params: { inventory_level: { available: @inventory_level.available } }
    end

    assert_redirected_to inventory_level_url(InventoryLevel.last)
  end

  test "should show inventory_level" do
    get inventory_level_url(@inventory_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_level_url(@inventory_level)
    assert_response :success
  end

  test "should update inventory_level" do
    patch inventory_level_url(@inventory_level), params: { inventory_level: { available: @inventory_level.available } }
    assert_redirected_to inventory_level_url(@inventory_level)
  end

  test "should destroy inventory_level" do
    assert_difference('InventoryLevel.count', -1) do
      delete inventory_level_url(@inventory_level)
    end

    assert_redirected_to inventory_levels_url
  end
end
