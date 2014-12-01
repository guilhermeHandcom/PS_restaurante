class Produto < ActiveRecord::Base
	belongs_to :categoria

	#has_and_belongs_to_many :comandas
	has_many :comanda_produtos, :class_name => 'ComandaProduto', :dependent => :delete_all
	has_many :comandas, :through => :comanda_produtos, :class_name => 'Comanda'
end