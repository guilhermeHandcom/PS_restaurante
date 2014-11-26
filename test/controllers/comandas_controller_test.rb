require 'test_helper'

class ComandasControllerTest < ActionController::TestCase
  setup do
    @comanda = comandas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comandas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comanda" do
    assert_difference('Comanda.count') do
      post :create, comanda: { aberto: @comanda.aberto, funcionario_id: @comanda.funcionario_id, mesa_id: @comanda.mesa_id, numero: @comanda.numero, valor_total: @comanda.valor_total }
    end

    assert_redirected_to comanda_path(assigns(:comanda))
  end

  test "should show comanda" do
    get :show, id: @comanda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comanda
    assert_response :success
  end

  test "should update comanda" do
    patch :update, id: @comanda, comanda: { aberto: @comanda.aberto, funcionario_id: @comanda.funcionario_id, mesa_id: @comanda.mesa_id, numero: @comanda.numero, valor_total: @comanda.valor_total }
    assert_redirected_to comanda_path(assigns(:comanda))
  end

  test "should destroy comanda" do
    assert_difference('Comanda.count', -1) do
      delete :destroy, id: @comanda
    end

    assert_redirected_to comandas_path
  end
end
