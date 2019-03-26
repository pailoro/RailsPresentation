require 'test_helper'

class AdvertisersCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advertisers_category = advertisers_categories(:one)
  end

  test "should get index" do
    get advertisers_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_advertisers_category_url
    assert_response :success
  end

  test "should create advertisers_category" do
    assert_difference('AdvertisersCategory.count') do
      post advertisers_categories_url, params: { advertisers_category: { name: @advertisers_category.name, slug: @advertisers_category.slug } }
    end

    assert_redirected_to advertisers_category_url(AdvertisersCategory.last)
  end

  test "should show advertisers_category" do
    get advertisers_category_url(@advertisers_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_advertisers_category_url(@advertisers_category)
    assert_response :success
  end

  test "should update advertisers_category" do
    patch advertisers_category_url(@advertisers_category), params: { advertisers_category: { name: @advertisers_category.name, slug: @advertisers_category.slug } }
    assert_redirected_to advertisers_category_url(@advertisers_category)
  end

  test "should destroy advertisers_category" do
    assert_difference('AdvertisersCategory.count', -1) do
      delete advertisers_category_url(@advertisers_category)
    end

    assert_redirected_to advertisers_categories_url
  end
end
