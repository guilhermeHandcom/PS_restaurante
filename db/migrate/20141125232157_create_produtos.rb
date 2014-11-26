class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :valor
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
