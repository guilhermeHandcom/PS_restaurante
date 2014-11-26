class CreateComandas < ActiveRecord::Migration
  def change
    create_table :comandas do |t|
      t.integer :numero
      t.references :mesa, index: true
      t.float :valor_total
      t.references :funcionario, index: true
      t.boolean :aberto

      t.timestamps
    end
  end
end
