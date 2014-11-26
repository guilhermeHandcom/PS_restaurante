class CreateComandaProdutos < ActiveRecord::Migration
  def change
    create_table :comanda_produtos do |t|
      t.references :comanda, index: true
      t.references :produto, index: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
