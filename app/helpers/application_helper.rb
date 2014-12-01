module ApplicationHelper
	def retornaValorComanda(comanda)

		@comanda_produto = ComandaProduto.where("comanda_id = ?", comanda.id)
		@valorTotal = 0	
		if !comanda.produtos.blank?
			comanda.comanda_produtos.each do |cp|
				@valorTotal += (cp.produto.valor * cp.quantidade)
			end

		end
		return @valorTotal
	end
end
