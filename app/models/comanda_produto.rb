class ComandaProduto < ActiveRecord::Base
	# self.table_name = "comanda_produtos"

	belongs_to :comanda
	belongs_to :produto
end
