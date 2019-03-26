require 'test_helper'

class EmissorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emissora = emissoras(:one)
  end

  test "should get index" do
    get emissoras_url
    assert_response :success
  end

  test "should get new" do
    get new_emissora_url
    assert_response :success
  end

  test "should create emissora" do
    assert_difference('Emissora.count') do
      post emissoras_url, params: { emissora: { name: @emissora.name, photo: @emissora.photo } }
    end

    assert_redirected_to emissora_url(Emissora.last)
  end

  test "should show emissora" do
    get emissora_url(@emissora)
    assert_response :success
  end

  test "should get edit" do
    get edit_emissora_url(@emissora)
    assert_response :success
  end

  test "should update emissora" do
    patch emissora_url(@emissora), params: { emissora: { name: @emissora.name, photo: @emissora.photo } }
    assert_redirected_to emissora_url(@emissora)
  end

  test "should destroy emissora" do
    assert_difference('Emissora.count', -1) do
      delete emissora_url(@emissora)
    end

    assert_redirected_to emissoras_url
  end
end
