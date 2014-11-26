class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :numero
      t.integer :capacidade

      t.timestamps
    end
  end
end
