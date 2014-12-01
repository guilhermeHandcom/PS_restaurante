module ApplicationHelper
	def retornaValorComanda(comanda)

		@comanda_produtos = ComandaProduto.where("comanda_id = ?", comanda.id)
		if !@comanda_produtos.blank?
			p "============================ #{@comanda_produtos.length} "
		else
		end		

		# if !comanda.produtos.blank?
		# 	@valorTotal = 0	
		# 	comanda.produtos.each do |p|
		# 		puts '##################'+p.id.to_s
		# 		#cp.produto.each do |p|
		# 		#	@valorTotal = @valorTotal + (p.valor * c_p.quantidade)
		# 		#end
		# 	end

		# 	return @valorTotal
		# else
		# 	return 'Nenhum produto encontrado.'
		# end
	end
end
