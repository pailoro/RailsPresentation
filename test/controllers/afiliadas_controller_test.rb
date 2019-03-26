require 'test_helper'

class AfiliadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @afiliada = afiliadas(:one)
  end

  test "should get index" do
    get afiliadas_url
    assert_response :success
  end

  test "should get new" do
    get new_afiliada_url
    assert_response :success
  end

  test "should create afiliada" do
    assert_difference('Afiliada.count') do
      post afiliadas_url, params: { afiliada: { cnpj: @afiliada.cnpj, emissora_id: @afiliada.emissora_id, estado: @afiliada.estado, name: @afiliada.name, phone: @afiliada.phone, razao_social: @afiliada.razao_social, regiao: @afiliada.regiao } }
    end

    assert_redirected_to afiliada_url(Afiliada.last)
  end

  test "should show afiliada" do
    get afiliada_url(@afiliada)
    assert_response :success
  end

  test "should get edit" do
    get edit_afiliada_url(@afiliada)
    assert_response :success
  end

  test "should update afiliada" do
    patch afiliada_url(@afiliada), params: { afiliada: { cnpj: @afiliada.cnpj, emissora_id: @afiliada.emissora_id, estado: @afiliada.estado, name: @afiliada.name, phone: @afiliada.phone, razao_social: @afiliada.razao_social, regiao: @afiliada.regiao } }
    assert_redirected_to afiliada_url(@afiliada)
  end

  test "should destroy afiliada" do
    assert_difference('Afiliada.count', -1) do
      delete afiliada_url(@afiliada)
    end

    assert_redirected_to afiliadas_url
  end
end
