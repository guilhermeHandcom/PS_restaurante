require 'test_helper'

class ComandaprodutosControllerTest < ActionController::TestCase
  setup do
    @comanda_produto = comanda_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comanda_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comanda_produto" do
    assert_difference('ComandaProduto.count') do
      post :create, comanda_produto: { comanda_id: @comanda_produto.comanda_id, produto_id: @comanda_produto.produto_id, quantidade: @comanda_produto.quantidade }
    end

    assert_redirected_to comanda_produto_path(assigns(:comanda_produto))
  end

  test "should show comanda_produto" do
    get :show, id: @comanda_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comanda_produto
    assert_response :success
  end

  test "should update comanda_produto" do
    patch :update, id: @comanda_produto, comanda_produto: { comanda_id: @comanda_produto.comanda_id, produto_id: @comanda_produto.produto_id, quantidade: @comanda_produto.quantidade }
    assert_redirected_to comanda_produto_path(assigns(:comanda_produto))
  end

  test "should destroy comanda_produto" do
    assert_difference('ComandaProduto.count', -1) do
      delete :destroy, id: @comanda_produto
    end

    assert_redirected_to comanda_produtos_path
  end
end
