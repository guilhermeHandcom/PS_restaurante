class FaturamentoController < ApplicationController
def index
	if params[:data]
		@comandas = Comanda.all.where('DATE(created_at) = ?', params[:data])
	else
		@comandas = Comanda.all
	end
end
end
