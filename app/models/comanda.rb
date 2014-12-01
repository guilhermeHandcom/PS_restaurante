class Comanda < ActiveRecord::Base
	belongs_to :mesa
	belongs_to :funcionario

	#has_and_belongs_to_many :produtos
	has_many :comanda_produtos, :class_name => 'ComandaProduto', :dependent => :delete_all
	has_many :produtos, :through => :comanda_produtos, :class_name => 'Produto'
end