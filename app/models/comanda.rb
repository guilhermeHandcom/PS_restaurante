class Comanda < ActiveRecord::Base
  belongs_to :mesa
  belongs_to :funcionario
end
