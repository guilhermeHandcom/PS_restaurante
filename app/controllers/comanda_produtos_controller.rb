class ComandaProdutosController < ApplicationController
  before_action :set_comanda_produto, only: [:show, :edit, :update, :destroy]

  # GET /comanda_produtos
  # GET /comanda_produtos.json
  def index
    if params[:comanda_id]
      @comanda_produtos = ComandaProduto.where("comanda_id = ?", params[:comanda_id])
    else
      @comanda_produtos = ComandaProduto.all
    end
  end

  # GET /comanda_produtos/1
  # GET /comanda_produtos/1.json
  def show
  end

  # GET /comanda_produtos/new
  def new
    @comanda_produto = ComandaProduto.new
  end

  # GET /comanda_produtos/1/edit
  def edit
  end

  # POST /comanda_produtos
  # POST /comanda_produtos.json
  def create
    @comanda_produto = ComandaProduto.new(comanda_produto_params)

    respond_to do |format|
      if @comanda_produto.save
        format.html { redirect_to @comanda_produto, notice: 'Item adicionado com sucesso.' }
        format.json { render :show, status: :created, location: @comanda_produto }
      else
        format.html { render :new }
        format.json { render json: @comanda_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comanda_produtos/1
  # PATCH/PUT /comanda_produtos/1.json
  def update
    respond_to do |format|
      if @comanda_produto.update(comanda_produto_params)
        format.html { redirect_to @comanda_produto, notice: 'Item atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @comanda_produto }
      else
        format.html { render :edit }
        format.json { render json: @comanda_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comanda_produtos/1
  # DELETE /comanda_produtos/1.json
  def destroy
    @comanda_produto.destroy
    respond_to do |format|
      format.html { redirect_to comanda_produtos_url, notice: 'Item excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comanda_produto
      @comanda_produto = ComandaProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comanda_produto_params
      params.require(:comanda_produto).permit(:comanda_id, :produto_id, :quantidade)
    end
end
