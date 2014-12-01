class CreateComandas < ActiveRecord::Migration
  def change
    create_table :comandas do |t|
      t.integer :numero
      t.references :mesa, index: true
      t.references :funcionario, index: true
      t.boolean :aberto

      t.timestamps
    end
  end
end
