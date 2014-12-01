module ApplicationHelper
	def retornaValorComanda(comanda)

		@comanda_produto = ComandaProduto.where("comanda_id = ?", comanda.id)

		if !comanda.produtos.blank?
			@valorTotal = 0	
			comanda.comanda_produtos.each do |cp|
				@valorTotal += (cp.produto.valor * cp.quantidade)
			end

			return @valorTotal
		else
			return 'Nenhum produto encontrado.'
		end
	end
end
